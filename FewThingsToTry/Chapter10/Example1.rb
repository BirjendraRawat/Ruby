# Party like it’s roman_to_integer("mcmxcix")! Come on, you knew it was coming,
# didn’t you? It’s the other half of your roman_numeral(1999) method. Make
# sure to reject strings that aren’t valid Roman numerals.
puts "Enter the roman numerals you want to convert"
str = gets.chomp.to_s
roman = str.upcase.split

# if roman.include? "I" || roman.include? "V" || 	roman.include? "X" || roman.include? "L" || 	roman.include? "C" || roman.include? "D" ||  roman.include? "M"
   if roman.any? {|n| n = "I" && n = "V" }
   puts "Entered String is valid"
   else
   puts "String is invalid"  
end

puts roman