require_relative "maze_node.rb"


class Maze


  attr_accessor :start_horizontal, :start_vertical

  def initialize
    @start_horizontal = nil
    @start_vertical = nil
  end

  # open the file
  # read a line
  # FOR each line
    # create a new array
    # UNTIL you find a newline
    # make each part a unique element within the array
  # return the array of arrays
  def convert_maze_to_array(file)
    presplit_return_array = File.readlines(file)
    split_return_array = presplit_return_array.map do |row|
      row.chomp!
      row.split('')
    end
  end

  # get the starting node of the maze
  def get_start(processed_maze)
    # start_horizontal; start_vertical = nil
    processed_maze.each_with_index do |row, row_index|
      row.each_with_index do |item, item_index|
        if item == 'o'
          @start_horizontal = row_index
          @start_vertical = item_index
        end
      end
    end
  end


  # print the "array'd" maze
  def print_maze(maze_array)
  end






end
