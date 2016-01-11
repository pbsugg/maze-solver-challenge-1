require_relative 'maze.rb'

#contains logic for traversing maze
# holds current position in variables (as array coordinates)
# current_horizontal = "x-coordinate"
# current_vertical = "y-coordinate"




class MazeRunner

  attr_accessor :maze

  # maze has already been processed at this stage
  def initialize(maze_object)
    @maze = maze_object.processed_maze
  end

  # all the possible movements: look right, down, left, up
  # either update current position or give new position
  # getting vertical and horizontal coordinates w/i the maze
  def check_up(vertical, horizontal)
    @maze[vertical - 1][horizontal] if (vertical - 1) >= 0
  end

  def check_right(vertical, horizontal)
    @maze[vertical][horizontal + 1] if (horizontal + 1) >= 0
  end

  def check_down(vertical, horizontal)
    @maze[vertical + 1][horizontal] if (vertical + 1) >= 0
  end

  def check_left(vertical, horizontal)
    @maze[vertical][horizontal - 1] if (horizontal - 1) >= 0
  end


  # "position" is an array with two elements, formatted [y, x] coordinates
  # movement returns a new position
  def move_right(current_position)
  end

  def move_down(current_position)
  end

  def move_left(current_position)
  end

  def move_up(current_position)
  end

end
