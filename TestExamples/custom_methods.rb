def double_this(num)
	num_times_2 = num*2
	puts "#{num} doubled is #{num_times_2}"
end
double_this(54)

# puts num_times_2.to_s

def square(x)
	puts(x*x)
end
x = 7
square(x)

my_number = 8
square(my_number)

x = 10
half = x/2
square(half)
puts x

def say_moo(number_of_moos)
	puts "mooooooo...."*number_of_moos
	"yellow submarine"
end

z = say_moo(3)
puts z.capitalize + ", dude...."
puts
puts z            + "."
puts
puts say_moo(4)
puts
say_moo(2)

name = gets.to_i
print name
print "vikas"