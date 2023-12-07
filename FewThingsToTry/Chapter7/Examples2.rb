# Table of contents, revisited. Rewrite your table of contents program on
# page 28. Start the program with an array holding all of the information
# for your table of contents (chapter names, page numbers, and so on).
# Then print out the information from the array in a beautifully formatted
# table of contents.

class Contents
	def initialize

		# width = 100
		head = "Table of Contents"
		puts head.center(50)
		puts
		chapters = [["Numbers",   1],
		            ["Letters",   5],
		            ["Variables", 9]]
		counter = 1
		chapters.each do |num|
			topics = num[0]
			pageNo = num[1]
			# start = "Chapter #{counter}: #{topics}"
			# last = "page #{pageNo}"
			counter += 1

		puts "Chapter #{counter}: #{topics}".ljust(30) + "page #{pageNo}".rjust(20)
		end
	end
end
puts Contents.new


# puts "#{chapters[1]}".ljust(30) + "#{pageNo[1]}".rjust(20) 
# puts "#{chapters[2]}".ljust(30) + "#{pageNo[2]}".rjust(20) 