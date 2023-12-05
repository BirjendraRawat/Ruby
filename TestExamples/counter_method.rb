class Student
	@@student_count = 0

	def initialize(name, standard)
	@name = name
	@standard = standard
	end

	def total_students
	@@student_count += 1
	puts "Total students are #{@@student_count}"
	end
end