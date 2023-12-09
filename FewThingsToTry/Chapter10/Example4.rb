# Birthday helper! Write a program to read in names and birth dates from
# a text file. It should then ask you for a name. You type one in, and it tells
# you when that person’s next birthday will be (and, for the truly adventur-
# ous, how old they’ll be). The input file should look something like this:
# Chris Hemsworth, Aug 11, 1983
# Chris Evans, Jun 13, 1981
# Chris Pratt, Jun 21, 1979
# Chris Pine, Aug 26, 1980
# Other Chris Pine, Aug 3, 1976


# First, load in the birthdates.
birth_dates = {}
File.read("birthdates.txt").each_line do |line|
line = line.chomp
# Find the index of first comma,
# so we know where the name ends.
first_comma = 0
while line[first_comma] != "," &&
first_comma < line.length
first_comma = first_comma + 1
end

name = line[0..(first_comma - 1)]
date = line[-12..-1]

birth_dates[name] = date
end

# Now ask the user which one they want to know.
puts "Whose birthday would you like to know?"
name = gets.chomp
date = birth_dates[name]

if date == nil
puts "Oooh, I don't know that one..."
else

puts date[0..5]
end