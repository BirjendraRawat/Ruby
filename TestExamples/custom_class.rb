class Integer
def to_roman
if self == 5
roman = "V"
else
roman = "XLII"
end

roman
end
end

# I'd better test on a couple of numbers...
puts 5.to_roman
puts 40.to_roman

class Die
	def roll
		1 + rand(6)
	end
end

# Let's malke a couple of dice
dice = [Die.new, Die.new]

# ... and roll them
dice.each do |die|
	puts die.roll
end