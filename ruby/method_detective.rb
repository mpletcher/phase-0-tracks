# 5.1 Using Ruby Documentation
# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".downcase
# => “InVeStIgAtIoN”

"zom".insert(2,"o")
# => “zoom”

"enhance".center(10)
# => "    enhance    "

"Stop! Youre under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
" suspects".insert(0, "The usual")
"the usual" << " suspects"
" suspects".prepend("The usual")
#=> "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chomp("r")
"The case of the disappearing last letter".slice(0..38)
# => "The case of the disappearing last lette"


"The mystery of the missing first letter".slice(1..38)
"The mystery of the missing first letter".sub("T", "")
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
"Elementary,    my   dear        Watson!".gsub(/\s+/, ' ')
# => "Elementary, my dear Watson!"

"z".ord
"z".each_codepoint {|c| print c, ' ' }
# => 122 
# 122 is the integer ordinal that represents "z" on the ASCII (American Standard Code for Information Interchange) code table

"How many times does the letter 'a' appear in this string?".count ("a")
# "How many times does the letter 'a' appear in this string?".<???>
# => 4
