#gem install sinatra --no-rdoc --no-ri

#gem install shotgun

#localhost:8080/?name=george&age=29

# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "hello george!!!!!!"
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#1. A /contact route that displays an address (you can make up the address).
get '/contact'  do
  "123 sleepy rd. hillburg, CA 90777"
end
#2. A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"
get '/great_job/' do
  if params[:person]
    "Good job, #{params[:person]}!"
  else
    "Good job!"
  end
end

# Optional bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.
# I know this is not what the bouns challenge asked for but it seemed more intresting to me so i explored it
get '/vampires' do
  vampires = db.execute("SELECT * FROM students")
  vamps = ""

  vampires.each do |vampires|
    if vampires['age'] >= 100
      vamps << "#{vampires['name']} is #{vampires['age']} and is likley a vampire!<br><br>"
    end
  end
    vamps
end

# 1.Is Sinatra the only web app library in Ruby? What are some others?no. rails, lotus,Trailblazer,Cuba and a bunch of others.

# 2.Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others? no. mysql, mysql2, postgresql out of the box, you can use some others too with an adapter gem

# 3.What is meant by the term web stack? all The technolgy you are useing, ie your db and frameworks.