require_relative "maze_node.rb"


class Maze


  attr_accessor :start_horizontal, :start_vertical, :processed_maze

  # x and y coordinates start out 0
  def initialize
    @start_vertical = nil
    @start_horizontal = nil
    @processed_maze = nil
  end

  # open the file
  # read a line
  # FOR each line
    # create a new array
    # UNTIL you find a newline
    # make each part a unique element within the array
  # return the array of arrays
  def convert_maze_to_array(file)
    @processed_maze = File.readlines(file)
    @processed_maze = @processed_maze.map do |row|
      row.chomp!
      row.split('')
    end
  end

  # get the starting node of the maze
  def get_start(processed_maze)
    # start_horizontal; start_vertical = nil
    processed_maze.each_with_index do |row, vertical_index|
      row.each_with_index do |item, horizontal_index|
        if item == 'o'
          @start_vertical = vertical_index
          @start_horizontal = horizontal_index
        end
      end
    end
  end


  # print the "array'd" maze
  def print_maze(maze_array)
  end






end
