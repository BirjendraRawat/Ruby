# "Modern” Roman numerals. Eventually, someone thought it would be terribly
# clever if putting a smaller number before a larger one meant you
# had to subtract the smaller one. (My bet is that it was a stone carver in
# some year that ended in a 9, tasked with dating public buildings or statues
# or something.) As a result of this development, you must now suffer.
# Rewrite your previous method to return the new-style Roman numerals,
# so when someone calls roman_numeral(4), it should return "IV".
# I = 1  V = 5  X = 10 L = 50 C = 100 D = 500 M = 1000  

# def old_roman_numeral(num)
# 	@num = num 
# 	num = gets.chomp.to_i
# roman = num
# roman =  "M" * (num / 1000)
# roman = roman + "D" * (num % 1000 / 500)
# roman = roman + "C" * (num % 500 / 100)
# roman = roman + "L" * (num % 100 /50)
# roman = roman + "X" * (num %50 /10)
# roman = roman + "V" * (num %10 /5)
# roman = roman + "I" * (num % 5 /1)

# roman
# end
# puts ("Enter the nuber")
# puts(old_roman_numeral(@num))


class GetRomanModern
	def initialize
		puts "Enter number between 1 to 3000"
		num = gets.chomp.to_i
		thous = num%1000
		hund = (num%1000)/100
		tens = (num%100)/10
		ones = (num%10)

		
		roman = "M" * (num/1000)

		if hund == 9
			roman = roman + "CM"
			elsif hund == 4
			roman = roman + "CD"
		else
			roman = roman + "D"* ((num%1000)/500)
			roman = roman + "C"* ((num%500)/100)
		end

		if tens == 9
			roman = roman + "XC"
		elsif tens == 4
			roman = roman + "XL"
		else
			roman = roman + "L"* ((num%100)/50)
			roman = roman + "X"* ((num%50)/10)
		end

		if ones == 9
			roman = roman + "IX"
			elsif ones == 4
				roman = roman + "IV"
			else
				roman = roman + "V" * ((num%10)/5)
				roman = roman + "I"* (num%5)
			end
		puts ("Roman numeral of that is: " + roman )
	end
end
			puts = GetRomanModern.new
			