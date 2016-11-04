#psudo code
#create method change_name
#run method change_name
#split name reverse name join name
#change consonants first with conditional regx
# loop through and case chand vowels
#caps first letter

def change_name(name)
  # swapes names
  name = name.split(' ').reverse.join(' ')

  #change all consonant's
  name = name.downcase.split('').map do |l|
    if l.match(/[a,e,i,o,u,\s]/)
      l = l
      #account for edge case
    elsif l == "z"
      l = "b"
    else
      l = l.next
      #fixes consonant's that changed into vowels
      if l.match(/[a,e,i,o,u]/)
        l.next
      else
        l = l
      end
    end
  end
#Loop through vowles
  for i in 0..name.length()-1
    case name[i]
      when "a"
        name[i] = "e"
      when "e"
        name[i] = "i"
      when "i"
        name[i] = "o"
      when "o"
        name[i] = "u"
      when "u"
        name[i] = "a"
    end
  end
name = name.join()
name = name.split.map(&:capitalize).join(' ')
puts name
name
end

#test function
# p change_name("BOBz builder")
# p change_name("aaa eeeee BBB ZZ")
# p change_name("Felicia Torres")

#prompt users and print names and aliases
name_hash ={}
agent_name = ""

while agent_name !="quit"
  puts "Enter agent name or type quit to exit"
  agent_name = gets.chomp
  if agent_name == "quit"
      #loop through hash and print names
      name_hash.each do |value|
      puts "#{value[0]} is also known as #{value[1]}"
    end
  else
    name_hash[agent_name] = change_name(agent_name)
  end
end
