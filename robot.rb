# Instructions
# In this challenge, you are working with a computer simulation of a mobile robot. The robot moves on a plane, and its movements are described by a command string consisting of one or more of the following letters:

# G instructs the robot to move forward one step
# L instructs the robot to turn left
# R instructs the robot to turn right
# The robot CANNOT go backwards - poor robot. After running all of the movement commands, you want to know if the robot returns to its original starting location.
# #Ruby
    # return_to_origin?("GRGRGRG")
    # => true
    # 

class Robot 
  def initialize
    @x = 0
    @y = 0
    @direction = 0
  end

  def move(command)
    command.each_char do |char|
      if char == "G"
        move_forward
        puts "x: #{@x}, y: #{@y}"
      elsif char == "L"
        turn_left
        print_direction(@direction)
      elsif char == "R"
        turn_right
        print_direction(@direction)
      end
    end
  end

  def move_forward
    if @direction == 0
      @y += 1
    elsif @direction == 1
      @x += 1
    elsif @direction == 2
      @y -= 1
    elsif @direction == 3
      @x -= 1
    end
  end

  def turn_left
    @direction = @direction - 1
  end

  def turn_right
    @direction = @direction + 1
  end

  def return_to_origin?(string)
    move(string)
    if @x == 0 && @y == 0
      true
    else
      false
    end
  end

  def print_direction(direction)
    if @direction == 0
      puts "looking north"
    elsif @direction == 1
      puts "looking east"
    elsif @direction == 2
      puts "looking south"
    elsif @direction == 3
      puts "looking west"
    end
  end
end

robot = Robot.new
puts robot.return_to_origin?("GRGRGRG") 
# puts "---------------"
# puts robot.return_to_origin?("GGG") 
puts "---------------"
# puts robot.return_to_origin?("GLGLGLG")
