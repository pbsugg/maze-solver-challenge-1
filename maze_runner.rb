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
    space = @maze[vertical - 1][horizontal] if (vertical - 1) >= 0
    if space == "." || space == "x"
      return true
    end
    false
  end

  def check_right(vertical, horizontal)
    space = @maze[vertical][horizontal + 1] if (horizontal + 1) >= 0
    if space == "." || space == "x"
      return true
    end
    false
  end

  def check_down(vertical, horizontal)
    space = @maze[vertical + 1][horizontal] if (vertical + 1) >= 0
    if space == "." || space == "x"
      return true
    end
    false
  end

  def check_left(vertical, horizontal)
    space = @maze[vertical][horizontal - 1] if (horizontal - 1) >= 0
    if space == "." || space == "x"
      return true
    end
    false
  end


  # "position" is an array with two elements, formatted [y, x] coordinates
  # input: current_position
  # output: if space == "." in array marking space, new position
  # movement returns a new position

  def move_right(vertical, horizontal)
    one_space_right = @maze[vertical][horizontal + 1]
    if one_space_right == "." || one_space_right == "x"
      @maze[vertical][horizontal + 1] = "x"
      [vertical, horizontal + 1]
    else
      [vertical, horizontal]
    end
  end

  def move_down(vertical, horizontal)
    one_space_down = @maze[vertical + 1][horizontal]
    if  one_space_down == "." || one_space_down == "x"
      @maze[vertical + 1][horizontal] = "x"
      [vertical + 1, horizontal]
    else
      [vertical, horizontal]
    end
  end

  def move_left(vertical, horizontal)
    one_space_left = @maze[vertical][horizontal - 1]
    if one_space_left == "." || one_space_left == "x"
      @maze[vertical][horizontal - 1] = "x"
      [vertical, horizontal - 1]
    else
      [vertical, horizontal]
    end
  end

  def move_up(vertical, horizontal)
    one_space_up =  @maze[vertical][horizontal - 1]
    if one_space_up == "." || one_space_up == "x"
      @maze[vertical - 1][horizontal] = "x"
      [vertical - 1, horizontal]
    else
      [vertical, horizontal]
    end
  end

  # general logic for movement:
  # overall DF movement algorithm
  # check for movement in right, down, left, up order
  # IF successful (success = return different position than current position)
  # repeat movement algorithm
  # ELSE (not successful)
  # return nil or something similar

  # this will move one space if possible
  # input: current space
  # output: new space OR nil if no movement possible
  def move(vertical, horizontal)
    return move_right(vertical, horizontal) if check_right(vertical, horizontal)
    return move_down(vertical, horizontal) if check_down(vertical, horizontal)
    return move_left(vertical, horizontal) if check_left(vertical, horizontal)
    return move_up(vertical, horizontal) if check_up(vertical, horizontal)
  end

  def df_solve(vertical, horizontal)
  end

end
