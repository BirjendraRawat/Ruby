var = "Garhwali"
str = ""
languages = ["English",str, "Norwegian", "Ruby", var]
languages.each do |lang|
puts "I love #{lang}! Don't you?"
end
puts "And let's hear it for Fortran!"
puts "<crickets chirp in the distance>"

array = Array.new
puts array
array << 10 << "bijji"
puts array
puts

array1 = Array.new(11,'string')
array1[0] = 'hello'
#puts array1
puts

array1.push('rawat')   # Inserts element at the end of Array
#puts array1
puts
array1.unshift('hey wass up!')   # Inserts the element at the begining
#puts array1
array1.pop  # Rmoves the last element of the array
puts array1

array1.shift    # removes the element from the begining of an Array

array1.delete_at(5)  # removes the element at a given index

array1.delete('hello') # will removes all the occurunce of the element value

#array1.delete
puts array1 

array.compact  # will remove the nil elements from the array