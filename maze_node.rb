# goal o a maze node is to "pre-load" logic of traversing the maze.
# Each element will be stored by rows within an array, but will also contain pointers to all its neighbor nodes



class MazeNode

  attr_reader :right_edge, :down_edge, :left_edge, :up_edge

  def initialize
    @value = nil
    @right_edge = nil
    @down_edge = nil
    @left_edge = nil
    @up_edge = nil
  end

  # this might not be necessary
  def edges?
  end


end
