require_relative "maze_node.rb"


class Maze

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
    processed_maze.each do |row|
      row.each do |item|
        return item if item == 'o'
      end
    end
  end


  # go through the maze, make all elements into nodes
  # not mapped yet, just nodes
  def make_all_string_elements_into_maze_nodes(string_array)
    string_array.each do |row|
      row.map! do |item|
        MazeNode.new(item)
      end
    end
    string_array
  end


  def get

  # look right, down, left, up
  def process_maze_node_neighbors(mazenode_array)
    mazenode_array.each_with_index do |row, row_index|
      row.each_with_index do |maze_node, item_index|
        # formula for getting the surrounding spaces to a node
        maze_node.right_edge = row[item_index + 1]
        if mazenode_array[row_index + 1]
          maze_node.up_edge = mazenode_array[row_index + 1][item_index]
        end
        maze_node.left_edge = row[item_index - 1]
        if mazenode_array[row_index + 1]
          maze_node.up_edge = mazenode_array[row_index - 1][item_index]
        end
      end
    end
    mazenode_array
  end

  # print the "array'd" maze
  def print_maze(maze_array)
  end






end
