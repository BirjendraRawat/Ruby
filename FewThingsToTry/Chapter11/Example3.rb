# Interactive baby dragon. Write a program that lets you enter commands
# such as feed and walk and calls those methods on your dragon. Of course,
# since you’re inputting just strings, you’ll need some sort of method dis-
# patch, where your program checks which string was entered and then
# calls the appropriate method.

# using the Dragon class from the chapter
class Dragon
	def initialize(name)
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # baby is full
		@stuff_in_intestine = 0 # baby doesn't need to go
		puts "#{@name} is born."
	end
	
	puts "What would you like to name your baby dragon?"
	name = gets.chomp
	dragon = Dragon.new(name)

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do
		
			if @asleep
			passage_of_time
			end
			# since passage_of_time might wake up the baby,
			# check to see if they are still asleep
			
			if @asleep
			puts "#{@name} snores, filling the room with smoke."
			end
		end

			if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
			end
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts "#{@name} giggles, which singes your eyebrows."
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "#{@name} briefly dozes off..."
		passage_of_time
		if @asleep
		@asleep = false
		puts "...but wakes when you stop."
		end
	end

	private
	# "private" means that the methods defined here are
	# methods internal to the object. (You can feed your
	# dragon, but you can't ask them whether they're hungry.)
	def hungry?
		# Method names can end with "?".
		# Usually, we do this only if the method
		# returns true or false, like this:
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end
	def passage_of_time
		if @stuff_in_belly > 0
		# Move food from belly to intestine.
		@stuff_in_belly = @stuff_in_belly - 1
		@stuff_in_intestine = @stuff_in_intestine + 1
		else # Our dragon is starving!
		if @asleep
		@asleep = false
		puts "#{@name} wakes up suddenly!"
		end
		puts "#{@name} is starving! In desperation, #{@name} ate YOU!"
		exit # This terminates the program.
		end

		if @stuff_in_intestine >= 10
		@stuff_in_intestine = 0
		puts "Whoops! #{@name} had an accident..."
		end

		if hungry?
		if @asleep
		@asleep = false
		puts "#{@name} wakes up suddenly!"
		end
		puts "#{@name}'s stomach grumbles..."
		end
		if poopy?
		if @asleep
		@asleep = false
		puts "#{@name} wakes up suddenly!"
		end
		puts "#{@name} does the potty dance..."
		end
	end

	while true
	puts
	puts "commands: feed, toss, walk, rock, put to bed, exit"
	command = gets.chomp

	if command == "exit"
		break
		elsif command == "feed"
		dragon.feed
		elsif command == "toss"
		dragon.toss
		elsif command == "walk"
		dragon.walk
		elsif command == "rock"
		dragon.rock
		elsif command == "put to bed"
		dragon.put_to_bed
		else
		puts "Huh? Please type one of the commands."
		end
	end
end