# Deaf grandma extended. What if Grandma doesn’t want you to leave?
# When you shout BYE, she could pretend not to hear you. Change your
# previous program so that you have to shout BYE three times in a row. Make
# sure to test your program: if you shout BYE three times but not in a row,
# you should still be talking to Grandma.

class GrandmaExtended
	def initialize
		puts " HEY SONNY HOW ARE YOU!!"
		year = 1930
		bye_count = 0
		while true
			reply = gets.chomp
			if reply == "BYE"
				bye_count = bye_count + 1
			else
				bye_count = 0
			end
			if bye_count >= 3
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

puts GrandmaExtended.new