require_relative 'maze.rb'

#contains logic for traversing maze
# holds current position in variables (as array coordinates)
# current_horizontal = "x-coordinate"
# current_vertical = "y-coordinate"




class MazeRunner

  attr_accessor :current_horizontal, :current_vertical

  def initialize
    @current_horizontal = nil
    @current_vertical = nil
  end


  # look right, down, left, up
  # remember to update current position as well
  def go_up(position)
    if mazenode_array[row_index + 1]
      maze_node.up_edge = mazenode_array[row_index + 1][item_index]
    end
  end

  def go_right(position)

    maze_node.right_edge = row[item_index + 1]
  end

  def go_down(position)
    if mazenode_array[row_index + 1]
      maze_node.up_edge = mazenode_array[row_index - 1][item_index]
    end
  end

  def go_left(position)
    maze_node.left_edge = row[item_index - 1]
  end


end
