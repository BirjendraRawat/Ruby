# Better program logger. The output from that last logger was kind of hard
# to read, and it would only get worse the more you used it. It would be so
# much easier to read if it indented the lines in the inner blocks. So, you’ll
# need to keep track of how deeply nested you are every time the logger
# wants to write something. To do this, use a global variable, which is a
# variable you can see from anywhere in your code. To make a global vari-
# able, precede your variable name with $, like so: $global, $nesting_depth, and
# $big_top_pee_wee. In the end, your logger should output code like this:

#  Beginning 'outer block'...
# Beginning 'some little block'...
# Beginning 'teeny-tiny block'...
# ...'teeny-tiny block' finished, returning:
# lots of love
# ...'some little block' finished, returning:
# 42
# Beginning 'yet another block'...
# ...'yet another block' finished, returning:
# I love Indian food!
# ...'outer block' finished, returning:
# true

$logger_depth = 0

def log(desc, &block)
	prefix = " "*$logger_depth
	puts prefix + "Beginning '#{desc}'..."
	$logger_depth = $logger_depth + 1
	result = block.call
	$logger_depth = $logger_depth - 1
	puts prefix + "...'#{desc}' finished, returning: #{result}"
end

log("outer block") do
	log("some little block") do
		log("teeny-tiny block") do
			"lOtS oF lOVe".downcase
		end
		7 * 3 * 2
	end

	log("yet another block") do
		"!doof naidnI evol I".reverse
	end

	"0" == 0
end

# $logger_depth = 0
# def log(desc, &block)
# prefix = " "*$logger_depth
# puts prefix+"Beginning #{desc.inspect}..."
# $logger_depth += 1
# result = block[]
# $logger_depth -= 1
# puts prefix+"...#{desc.inspect} finished, returning: #{result}"
# end
# log("outer block") do
# log("some little block") do
# log("teeny-tiny block") do
# "lOtS oF lOVe".downcase
# end
# 7 * 3 * 2
# end
# log("yet another block") do
# "!doof naidnI evol I".reverse
# end
# "0" == '0'
# end