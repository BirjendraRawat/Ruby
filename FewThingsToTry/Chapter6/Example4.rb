# Leap years. Write a program that asks for a starting year and an ending
# year and then prints all the leap years between them (and including them,
# if they are also leap years). Leap years are years divisible by 4 (like 1984
# and 2004). But years divisible by 100 are not leap years (such as 1800
# and 1900) unless they are also divisible by 400 (such as 1600 and 2000,
# which were in fact leap years). What a mess.



# puts true && true    # true
# puts true && false	# false
# puts false && true	# false
# puts false && false # false
# puts
# puts true || true  # true
# puts true || false	# true
# puts false || true	# true
# puts false || false	# false


class LeapYear
	def initialize

		puts "Enter start year"
		start_year = gets.chomp.to_i
		puts "Enter end year"
		end_year = gets.chomp.to_i
		puts "Leap years are :"
		while start_year <= end_year
			if start_year % 4 == 0
				if start_year % 100 != 0 || start_year % 400 == 0
				# if	start_year%100 == 0 && start_year%400 != 0
				puts "#{start_year}"
				end
			end
			start_year = start_year + 1
		end
	end
end

puts LeapYear.new