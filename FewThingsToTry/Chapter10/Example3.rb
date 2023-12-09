# Happy birthday! Ask what year a person was born, then the month, and
# then the day. Figure out how old they are, and give them a ☺ (smiley
# emoji) for each birthday they’ve had.

class HappyBirthday
	def initialize
		puts "Enter the year you were born"
		b_year = gets.chomp.to_i
		puts "Now enter the month in digits"
		b_month = gets.chomp.to_i
		puts "Enter the day"
		b_day = gets.chomp.to_i
		birthday = Time.utc(b_year,b_month,b_day)
		today = Time.new
		ageNew = today.year - b_year

			if b_month < today.month || (b_month == today.month && today.day < b_day)
			ageNew -= 1
			end

			if today.month == b_month && today.day == b_day
			puts "HAPPY BIRTHDAY!!"
			end

		puts ("\u{1f618} "*ageNew)

# or by this method

		age = 1
		while Time.utc(b_year + age,b_month,b_day) <= today
			puts "\u{1f600}"
			# puts "😀"
			puts
			age += 1
		end
	end
end

puts HappyBirthday.new