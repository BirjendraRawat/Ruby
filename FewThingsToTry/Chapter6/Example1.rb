# Write a program that prints out the lyrics to that beloved classic, “99 Bottles
# of Beer on the Wall.”

start_number = 99

while start_number > 2
	puts "#{start_number} bottles of beer on the wall, #{start_number} bottles of beer!"
	start_number = start_number - 1
	puts "Take one down, pass it around, #{start_number} bottles of beer on the wall!"
end
puts "2 bottles of beer on the wall, 2 bottles of beer!"
puts "Take one down, pass it around, 1 bottles of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"