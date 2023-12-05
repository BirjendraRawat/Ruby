# reverse, length, upcase, downcase, swapcase, capitalize, center, ljust, and rjust.

letters = "aAbBcCdDeE"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts " a".capitalize
puts letters

line_width = 100
puts("                   Old Mother Hubbard".center(line_width))
puts("                  Sat in her cupboard".center(line_width))
puts("           Eating her curds and whey,".center(line_width))
puts("             When along came a spider".center(line_width))
puts("              Who sat down beside her".center(line_width))
puts("   And scared her poor shoe dog away.".center(line_width))

line_width2 = 40
str = "==> text <=="
puts(str.ljust(line_width2))
puts(str.center(line_width2))
puts(str.rjust(line_width2))
puts(str.ljust(line_width2/2) + str.rjust(line_width2/2))


# I am a single line comment

=begin  I am a multi
line comment  
=end

puts(rand())