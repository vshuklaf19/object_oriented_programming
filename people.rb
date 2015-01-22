class Person
	def initialize(name)
		@name = name
	end

	def greeting
		"Hi, my name is #{@name}"
	end 
end

class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

person1 = Instructor.new("Chris")
puts person1.greeting

person2 = Student.new("Christina")
puts person2.greeting

#Call the teach method on your instructor instance
# and call the learn method on your student
person1.teach
person2.learn
person2.teach

#teach doesn't work because its a method only
#available to Instructors.
