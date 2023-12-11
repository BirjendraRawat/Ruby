# Extend the built-in classes. How about making an array method named
# mult that multiplies all of the elements of the array together? So you could
# write [2,5,3].mult, and it would return to 30. Or how about making double an
# integer method? Or maybe a string method: "Austin".leet returns "/\Ü571N" or
# whatever? In each case, remember to use self to access the object the
# method is being called on (the "Austin" in "Austin".leet).

class Array
def mult

product = 1

self.each do |elem|
product = product * elem
end

product
end
end

puts [10,0,45].mult