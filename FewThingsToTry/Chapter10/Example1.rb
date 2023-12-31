# Party like it’s roman_to_integer("mcmxcix")! Come on, you knew it was coming,
# didn’t you? It’s the other half of your roman_numeral(1999) method. Make
# sure to reject strings that aren’t valid Roman numerals.

class RomantoInteger
   def initialize
      def roman_to_integer(roman)
      digit_vals = { "i" => 1,
                     "v" => 5,
                     "x" => 10,
                     "l" => 50,
                     "c" => 100,
                     "d" => 500,
                     "m" => 1000 }

      total = 0
      prev = 0
      index = roman.length - 1
      while index >= 0
      c = roman[index].downcase
      index = index - 1
      val = digit_vals[c]
      if !val
      puts "This is not a valid roman numeral!"
      return
      end

      puts "prev before if= #{prev}"
      puts "val before if= #{val}" 
      if val < prev
      val = val * -1
      else
      prev = val
      puts "prev= #{prev}"
      puts "val= #{val}" 
      puts
      end
      total = total + val
      puts "total= #{total}"
      puts
      end

      total
      end


      puts(roman_to_integer("mcmxcix"))
      puts(roman_to_integer("CCCLXV"))

      puts "Enter the roman numeral"
      puts(roman_to_integer(gets.chomp.to_s))
   end
end
puts RomantoInteger.new