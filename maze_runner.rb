require_relative 'maze.rb'

#contains logic for traversing maze
# holds current position in variables (as array coordinates)
# current_horizontal = "x-coordinate"
# current_vertical = "y-coordinate"




class MazeRunner

  attr_accessor :maze
  attr_reader :start_vertical, :start_horizontal

  # maze has already been processed at this stage
  def initialize(maze_object)
    @maze = maze_object.processed_maze
    @start_vertical = maze_object.start_vertical
    @start_horizontal = maze_object.start_horizontal
  end

  # all the possible movements: look right, down, left, up
  # either update current position or give new position
  # getting vertical and horizontal coordinates w/i the maze
  # have these "if" checks b/c need to protect against wrap-around in array
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
  # input: current_position
  # output: "X" in array marking space, new position
  # movement returns a new position

  def move_right(vertical, horizontal)
    if @maze[vertical][horizontal + 1] == "."
      @maze[vertical][horizontal + 1] = "x"
      [vertical, horizontal + 1]
    else
      [vertical, horizontal]
    end
  end

  def move_down(vertical, horizontal)
    if @maze[vertical + 1][horizontal] == "."
      @maze[vertical + 1][horizontal] = "x"
      [vertical + 1, horizontal]
    else
      [vertical, horizontal]
    end
  end

  def move_left(vertical, horizontal)
    if @maze[vertical][horizontal - 1] == "."
      @maze[vertical][horizontal - 1] = "x"
      [vertical, horizontal - 1]
    else
      [vertical, horizontal]
    end
  end

  def move_up(vertical, horizontal)
    if @maze[vertical - 1][horizontal] == "."
      @maze[vertical - 1][horizontal] = "x"
      [vertical - 1, horizontal]
    else
      [vertical, horizontal]
    end
  end

end
