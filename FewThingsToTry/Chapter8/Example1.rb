# More flavors competing. Add some more flavors to the ULTIMATE FLAVOR
# TOURNAMENT. Was it difficult to do? What changes would you need to
# make so that it’s easy to add new flavors to the tournament?

class FlavorsMatch
	def initialize
		match_1 = ["vanilla", "chocolate"]
		match_2 =   ["rhubarb", "pistachio"]
		match_3 =   ["strawberry", "butterscotch"]
		match_4 =   ["paan","pineapple"]
		match_1_1 = []  # this will hold the winners of match_1 & match_2
		match_1_2 = []  # this will hold the winners from match_3 & match_4
		match_2_1 = []  # this will hold the winners from match_2_1 & match_2_2
		winner = nil # this will hold the final winner

		def ask_for_winner(flavors)
		puts "0. "+flavors[0]
		puts "1. "+flavors[1]

		while true
		answer = gets.chomp.downcase
		if (answer == "0" || answer == "1")
		return flavors[answer.to_i]
		else
		puts "Please answer '0' or '1'."
		end
		end
		end


		puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
		puts
		puts "ROUND 1 MATCH 1: Which flavor is best?"
		match_1_1[0] = ask_for_winner(match_1)
		puts
		puts "ROUND 1 MATCH 2: Which flavor is best?"
		match_1_1[1] = ask_for_winner(match_2)
		puts
		puts "ROUND 1 MATCH 3: Which flavor is best?"
		match_1_2[0] = ask_for_winner(match_3)
		puts
		puts "ROUND 1 MATCH 4: Which flavor is best?"
		match_1_2[1] = ask_for_winner(match_4)
		puts
		puts "ROUND 2 MATCH 1: Which flavor is best?"
		match_2_1[0] = ask_for_winner(match_1_1)
		puts
		puts "ROUND 2 MATCH 2: Which flavor is best?"
		match_2_1[1] = ask_for_winner(match_1_2)
		puts "CHAMPIONSHIP MATCH!"
		puts "Which flavor is best?"
		winner = ask_for_winner(match_2_1)
		puts
		puts "And the Ultimate Flavor Champion is:"
		puts winner.upcase+"!!"
	end
end
puts FlavorsMatch.new