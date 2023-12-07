# Building and sorting an array. Write the program you saw at the beginning
# of this chapter, the one that asks you to type as many words as you want
# (one word per line, continuing until you press Enter on an empty line) and
# then repeats the words back in alphabetical order. Make sure to test your
# program thoroughly; for example, does hitting Enter on an empty line
# always exit your program? Even on the first line? And the second? Hint:
# There’s a lovely array method that’ll give you a sorted version of an array:
# sort. Use it!

# array_test = ["Building", "and", "sorting", "an", "array", "Write", "the", "program",
#  "you", "saw", "at", "the", "beginning"]

# array_test = array_test.map {|item| item.downcase}
# puts "#{array_test.sort}"

class SortedArray
	def initialize
		array_input = []

		while true
		input = gets.chomp
		if input == ""
		break
		end
		array_input.push(input)
		end
		puts ("The sorted array is : #{array_input.sort}")
	end
end
puts SortedArray.new