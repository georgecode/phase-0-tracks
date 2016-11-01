# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".sub('o','oo')
"zom".insert(1,"o")
#wasn't sure if they wanted us to change all the o's into oo's or just insert an o
# => “zoom”

"enhance".center(15)
# => "    enhance    "


"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
"the usual"<<" suspects"
#(this is prob a better way, but I used the above example because the challange included a .<???>)
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter"[0...-1]
# => "The case of the disappearing last lette"

"The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".gsub(/\s+/," ")
#once again the () are not needed but it makes the code more readable
# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
#It's z's ASCII Code

"How many times does the letter 'a' appear in this string?".count "a"
# "How many times does the letter 'a' appear in this string?".count("a")
#I prefer the readability of the second
# => 4