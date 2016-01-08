require_relative 'maze.rb'
require_relative 'maze_node.rb'

describe "Maze" do

  let (:file1){File.open("map1.txt", mode="r")}
  let(:sample_maze) {Maze.new}


  context "maze processing do" do

    it 'processes each line as its own array within the maze' do
      expect(sample_maze.process_maze(file1)).to be_kind_of(Array)
      array = sample_maze.process_maze(file1)
      expect(array.length).to eq(5)
    end

    it 'processes the first line correctly (each part is an individual element)' do
      return_array = sample_maze.process_maze(file1)
      expect(return_array.first.first).to eq('o')
      expect(return_array.first.last).to eq('.')
    end

    it 'processes the last line correctly' do
      return_array = sample_maze.process_maze(file1)
      expect(return_array.last.first).to eq('.')
      expect(return_array.last.last).to eq('#')
    end

  end

  context 'processes all edges' do

  end


  context 'get_start' do

    it 'finds the start of the maze and returns it' do
      processed_maze = sample_maze.process_maze(file1)
      expect(sample_maze.get_start(processed_maze)).to eq('o')
    end

    it 'should return the item as a maze_node (maze already processed)' do
      processed_maze = sample_maze.process_maze(file1)
      expect(sample_maze.get_start(processed_maze)).to be_kind_of(MazeNode)
    end

  end


  it 'can print the maze back out in comprehensible form'





end
