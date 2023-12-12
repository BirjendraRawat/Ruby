# English number. Write a method named english_number. It’ll take an integer,
# like 22, and return the English version of it (in this case, the string "twenty-
# two"). To start, have it handle only integers from 0 to 100. Then add the
# ability to handle larger numbers, so that a thousand becomes "ten hundred"
# and a million becomes "one hundred hundred hundred". The key is to use
# recursion.
# Now expand upon english_number. First, put in thousands; it should return
# "one thousand" instead of "ten hundred" and "ten thousand" instead of "one hundred
# hundred".
# Then add millions, so you get "one million" instead of "one thousand thousand".
# Then add billions, trillions, and any other -illions you want to add.

def english_number(number)
if number < 0 # No negative numbers.
return "Please enter a number that isn't negative."
end
if number == 0
return "zero"
end


# no more special cases, no more returns
num_string = "" # This is the string we will return.
ones_place = ["one", "two", "three",
			  "four", "five", "six",
			  "seven", "eight", "nine"]
tens_place = ["ten", "twenty", "thirty",
			  "forty", "fifty", "sixty",
			  "seventy", "eighty", "ninety"]
teenagers =  ["eleven", "twelve", "thirteen",
			  "fourteen", "fifteen", "sixteen",
              "seventeen", "eighteen", "nineteen"]

zillions = [["hundred",				2],
			["thousand",			3],
			["million",				6],
			["billion",				9],
			["trillion",   		   12],
			["quadrillion",		   15],
			["quintillion",		   18],
			["sextillion", 		   21],
			["septillion", 		   24],
			["octillion", 		   27],
			["nonillion", 		   30],
			["decillion", 		   33],
			["undecillion",		   36],
			["duodecillion", 	   39],
			["tredecillion", 	   42],
			["quattuordecillion",  45],
			["quindecillion", 	   48],
			["sexdecillion", 	   51],
			["septendecillion",    54],
			["octodecillion", 	   57],
			["novemdecillion", 	   60],
			["vigintillion", 	   63],
			["googol", 			  100]]

# `remaining` is how much of the number
#we still have remaining to write out.
# `writing` is the part we are
# writing out right now.
remaining = number

while zillions.length > 0
zil_pair = zillions.pop
zil_name =
zil_pair[0]
zil_base = 10 ** zil_pair[1]
writing = remaining/zil_base # How many zillions remaining?
remaining = remaining - writing*zil_base # Subtract off those zillions.

if writing > 0
# Here's the recursion:
prefix = english_number(writing)
num_string = num_string + prefix + " " + zil_name

if remaining > 0
# So we don't write "two billionfifty-one"
num_string = num_string + " "
end
end
end

# by this point, the number in `remaining` is less than 100

writing = remaining/10 # How many tens remaining?
remaining = remaining - writing*10 # ubtract off those tens.

if writing > 0
if ((writing == 1) and (remaining > 0))
# Since we can't write "tenty-two" instead of
# "twelve", we have to make a special exception
# for these.

num_string = num_string + teenagers[remaining-1]
# The `-1` is because teenagers[3] is
# "fourteen", not "thirteen".

# Since we took care of the digit in the
# ones place already, we have nothing remaining to write.
remaining = 0
else
num_string = num_string + tens_place[writing-1]
# The `-1` is because tens_place[3] is
# "forty", not "thirty".
end

if remaining > 0
# So we don't write "sixtyfour"
num_string = num_string + "-"
end
end

writing = remaining # How many ones remaining to write out?
remaining = 0 # Subtract off those ones.

if writing > 0
num_string = num_string + ones_place[writing-1]
# The `-1` is because ones_place[3] is
# "four", not "three".
end

# Now we just return `num_string`
num_string
end


puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 22)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
puts english_number(109238745102938560129834709285360238475982374561034)