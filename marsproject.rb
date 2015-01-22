class Rover
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
    puts self
	end

	def process_instructions(instructions)
    instructions.each_char do |c|
      if c == "M"
        move
      else 
        turn(c)
      end
          
      puts self    
    end
    
	end

	def move
    if @direction == "N" 
    	@y=@y+1
    elsif @direction== "S"
    	@y=@y-1
    elsif @direction== "E"
    	@x=@x+1
    elsif @direction== "W"
    	@x=@x-1
    else
    	raise "BAD DIRECTION: #{@direction}"
    end
	end

  def turn(instruction)
    if @direction == "N" && instruction="L" || @direction == "S" && instruction="R"
      @direction = "W"
    elsif @direction == "W" && instruction="L" || @direction == "E" && instruction="R"
      @direction = "S"
    elsif @direction == "S" && instruction="L" || @direction == "N" && instruction="R"
      @direction = "E"
    elsif @direction == "E" && instruction="L" || @direction == "W" && instruction="R"
      @direction = "N"       
    end
  end

  def to_s
    "Current location of Rover: #{@x} #{@y} #{@direction}"
  end
end
print "Enter starting position: "
x, y, d = gets.chomp.split


print "Enter Instructions: "
instructions = gets.chomp

mars_rover = Rover.new(x.to_i, y.to_i, d)
mars_rover.process_instructions(instructions)

# mars_rover.move
# mars_rover.move
# mars_rover.turn("L")
# mars_rover.turn("L")
# mars_rover.turn("L")
# puts mars_rover
