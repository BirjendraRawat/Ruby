# Grandfather clock. Write a method that takes a block and calls it once for
# each hour that has passed today. That way, if I were to pass in the block:
# do
# puts "BONG!"
# end
# it would chime (sort of) like a grandfather clock. Test your method out
# with a few different blocks.
# Hint: You can use Time.new.hour to get the current hour. But this returns
# a number between 0 and 23, so you’ll have to alter those numbers to get
# ordinary clock-face numbers (1 to 12).

def grandfather_clock(&block)
hour = Time.new.hour

if hour >= 13
hour = hour - 12
end

if hour == 0
hour = 12
end

hour.times do
block.call

end
end

grandfather_clock do
puts "BONG!"
end

# def grandfather_clock(&block)
# hour = (Time.new.hour + 11)%12 + 1

# hour.times(&block)
# end

# grandfather_clock { puts "BONG!" }