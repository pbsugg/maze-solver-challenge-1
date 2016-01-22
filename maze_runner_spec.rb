require_relative 'maze.rb'
require_relative 'maze_runner.rb'


describe "MazeRunner" do


    # prepare the maze
    let (:file1){File.open("map1.txt", mode="r")}
    let(:sample_maze) {Maze.new}
    before (:each) do
      sample_maze.convert_maze_to_array(file1)
      sample_maze.get_start(sample_maze.processed_maze)
    end
  # create a new runner instance
    let (:maze_runner){MazeRunner.new(sample_maze)}

  context "check positions from start" do

    it "check right" do
      expect(maze_runner.check_right(sample_maze.start_vertical, sample_maze.start_horizontal)).to eq(false)
    end


    it "check down" do
      expect(maze_runner.check_down(sample_maze.start_vertical, sample_maze.start_horizontal)).to eq(true)
    end


    it "check left" do
      expect(maze_runner.check_left(sample_maze.start_vertical, sample_maze.start_horizontal)).to eq(false)
    end

    it "check up" do
      
      expect(maze_runner.check_up(sample_maze.start_vertical, sample_maze.start_horizontal)).to eq(false)
    end

  end

  context "check position from non-start" do

    it "check right" do
      expect(maze_runner.check_right(3, 3)).to eq(false)
    end


    it "check down" do
      expect(maze_runner.check_down(3, 3)).to eq(true)
    end


    it "check left" do
      expect(maze_runner.check_left(3, 3)).to eq(false)
    end

    it "check up" do
      expect(maze_runner.check_up(3, 3)).to eq(true)
    end

  end

  context "change position" do

    let(:start_position){[maze_runner.start_vertical, maze_runner.start_horizontal]}
    let(:random_position){[rand(0..9), rand(0..9)]}

    it "changes the array object to an X if movement possible" do
      maze_runner.move_down(start_position[0], start_position[1])
      expect(maze_runner.maze[1][0]).to eq("x")
    end

    it "returns the new position if movement possible" do
      expect(maze_runner.move_down(start_position[0], start_position[1])).to eq([1,0])

    end

    it "returns the same position if movement not possible" do
      expect(maze_runner.move_right(start_position[0], start_position[1])).to eq([0,0])
    end

    it "does not change the board if movement not possible" do
      maze_runner.move_right(start_position[0], start_position[1])
      expect(maze_runner.maze[0][1]).to eq("#")
    end

  end

end
