class Rover
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instruction(instructions)
	#"hello".split("")=> ["h", "e", "l", "l", "o"]
		each_direction = instructions.split("")
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
#turn affects the direction of the rover. Depending on the current direction 
#of the rover, the new direction will be determined with either turning L or R.
    raise "Too many characters" if instruction.length > 1
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

  def current_location
    "Current location of Rover: #{@x} #{@y} #{@direction}"
  end

  def current_direction
    "Current direction of Rover: #{@direction}"
  end
end

# INPUT AND OUTPUT
# Test Input:
# 5 5                  > Our first line is our plateau size. 
# 1 2 N                > Lines 2 and 3 are paired, with the first being our initial start position and header,
# LMLMLMLMM            > and the second line being a series of move and turn instructions.
# 3 3 E                > Another 2-line pair, 1 pair per rover.
# MMRMMRMRRM

# Expected Output:
# 1 3 N                > When rover bot is done doing its instructions, output its current position
# 5 1 E                > The first line is the first rover, the second line is the next rover
# puts "Test Input: "
# plateau_size = gets.chomp
# initial_start_position = gets.chomp
# move_and_turn_instructions = gets.chomp

mars_rover = Rover.new(1,2,"N")
puts mars_rover.read_instruction("LMRLMRLMR")

mars_rover.move
mars_rover.move
mars_rover.turn("L")
mars_rover.turn("L")
mars_rover.turn("L")
puts mars_rover.current_location
puts mars_rover.current_direction
