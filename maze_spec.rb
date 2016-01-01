require_relative 'maze.rb'


describe "Maze" do

  let (:file1){File.open("map1.txt", mode="r")}
  let(:sample_maze) {Maze.new}


  context "maze processing do" do

    it 'processes each line as its own array within the maze' do
      expect(sample_maze.process_maze(file1)).to be_kind_of(Array)
      array = sample_maze.process_maze(file1)
      expect(array.length).to eq(5)
    end

    it 'processes each line correctly' do
      return_array = sample_maze.process_maze(file1)
      expect(return_array.first.first).to eq('o')
      expect(return_array.first.last).to eq('.')
    end

  end

  it 'can print the maze back out in comprehensible form'

  it 'finds the start of the maze and holds the value'

  it 'processes all edges'



end
