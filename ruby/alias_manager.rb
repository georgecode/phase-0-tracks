# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

#psudo code
#create method change_name
#run method change_name
#split name reverse name join name
#change consonants first with .next unless vowel
# make arry of vowles split name change vowels by advancing with the vowel array

def change_name(name)
  # swapes names
  name = name.split(' ').reverse.join(' ')
  puts name
  p name.split('')

  #change all consonant's
  name = name.downcase.split('').map do |l|
    if l == " " || l == "a" || l == "e" || l== "i" || l=="o" ||l=="u"
      l = l
    else
      l = l.next
      #fixes consonant's that changed into vowels
      if l == "a" || l == "e" || l== "i" || l=="o" ||l=="u"
        l.next
      else
        l = l
      end
      #
    end
  end
#create hash for vowles
  p name.join('')

end

change_name("BOB builder")



