
class MazeNode

  attr_reader :right_edge, :down_edge, :left_edge, :up_edge

  def initialize
    @right_edge = nil
    @down_edge = nil
    @left_edge = nil
    @up_edge = nil
  end

  def edges?
  end


end
