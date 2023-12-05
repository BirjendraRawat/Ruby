class ExampleClass
	# Instance Method
	def print_hello
		puts 'hello world! welcome to Ruby on Rails'
	end
	# Class Method
	def self.classMethodExample
		puts 'hello I am an example of class method'
	end
end

obj1 = ExampleClass.new
obj1.print_hello

ExampleClass.classMethodExample
