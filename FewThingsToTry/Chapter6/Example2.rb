# Write a program to simulate talking to your grandmother, who is hard of
# hearing. Whatever you say to Grandma (whatever you type in), she should
# respond with this:
#  HUH?! SPEAK UP, SONNY!
# unless you shout it (type in all capitals). If you shout, she can hear you (or
# at least she thinks so) and yells back:
# NO, NOT SINCE 1938!
# To make your program really believable, have Grandma shout a different
# year each time, maybe any year at random between 1930 and 1950. (This
# part is optional and would be much easier if you read the section on
# Ruby’s random number generator on page 30.) You can’t stop talking to
# Grandma until you shout BYE.
# Hint 1: Don’t forget about chomp. "BYE" with an Enter at the end isn’t the
# same as "BYE" without one.
# Hint 2: Try to think about what parts of your program should happen
# over and over again. All of those should be in your while loop.
# Hint 3: People often ask me, “How can I make rand give me a number in a
# range not starting at zero?” But you don’t need it to. Is there something
# you could do to the number rand returns to you?

class Grandma
	def initialize
	puts " HEY SONNY HOW ARE YOU!!"
	year = 1930
	while true
		reply = gets.chomp
		if reply == "BYE"
		puts "BYE BYE SONNY!!"
		break
	end
	
	if reply !=	reply.upcase
		puts "HUH?! SPEAK UP, SONNY!"
	else
		puts "NO, NOT SINCE #{year + rand(21)} !"		
	end
end
end
end

puts Grandma.new

		