require_relative 'maze.rb'
require_relative 'maze_node.rb'

describe "Maze" do

  let (:file1){File.open("map1.txt", mode="r")}
  let(:sample_maze) {Maze.new}


  context "maze processing do" do

    it 'processes each line as its own array within the maze' do
      expect(sample_maze.convert_maze_to_array(file1)).to be_kind_of(Array)
      array = sample_maze.convert_maze_to_array(file1)
      expect(array.length).to eq(5)
    end

    it 'processes the first line correctly (each part is an individual element)' do
      return_array = sample_maze.convert_maze_to_array(file1)
      expect(return_array.first.first).to eq('o')
      expect(return_array.first.last).to eq('.')
    end

    it 'processes the last line correctly' do
      return_array = sample_maze.convert_maze_to_array(file1)
      expect(return_array.last.first).to eq('.')
      expect(return_array.last.last).to eq('#')
    end

  end

  context 'processes all string elements into MazeNodes correctly' do

    let(:arrayed_maze){sample_maze.convert_maze_to_array(file1)}
    let(:processed_maze){sample_maze.process_string_elements_into_maze_nodes(arrayed_maze)}
    let(:random_maze_element){processed_maze[rand(1..9)][rand(1..9)]}

    it 'makes all the elements into MazeNodes' do
      expect(random_maze_element).to be_kind_of(MazeNode)
      expect(random_maze_element).to respond_to(:right_edge)

    end

    it 'correctly discerns all the edge elements of a node' do
      first_space = processed_maze[0][0]
      expect(first_space.value).to eq('o')
      expect(first_space.right_edge.value).to eq('#')
      expect(first_space.down_edge.value).to eq('.')
      expect(first_space.up_edge.value).to eq(nil)
    end

    it 'keeps everything in correct order in the array' do

    end

  end


  context 'get_start' do

    it 'finds the start of the maze and returns it' do
      processed_maze = sample_maze.convert_maze_to_array(file1)
      expect(sample_maze.get_start(processed_maze)).to eq('o')
    end

    it 'should return the item as a maze_node (maze already processed)' do
      processed_maze = sample_maze.convert_maze_to_array(file1)
      expect(sample_maze.get_start(processed_maze)).to be_kind_of(MazeNode)
    end

  end


  it 'can print the maze back out in comprehensible form'





end
