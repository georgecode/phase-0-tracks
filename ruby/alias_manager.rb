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
p name
end
#test function
# change_name("BOBz builder")
# change_name("aaa eeeee BBB ZZ")
# change_name("Felicia Torres")

agent_name = ""
#puts "Enter agent name"
while agent_name !="quit"
  puts "Enter agent name"
  agent_name = gets.chomp
  change_name(agent_name)
end