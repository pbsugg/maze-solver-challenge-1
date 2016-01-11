require_relative 'maze.rb'
require_relative 'maze_runner.rb'


describe "MazeRunner" do


    # prepare the maze
    let (:file1){File.open("map1.txt", mode="r")}
    let(:sample_maze) {Maze.new}
    let(:arrayed_maze){sample_maze.convert_maze_to_array(file1)}
    let(:processed_maze){sample_maze.get_start(arrayed_maze)}

    # create a new runner instance
    let (:maze_runner){MazeRunner.new(processed_maze)}

  context "check positions from start" do

    it "check right" do
      expect(maze_runner.check_right([start_vertical, start_horizontal]).to eq("#")
    end


    it "check down" do
      expect(maze_runner.check_down([start_vertical, start_horizontal]).to eq(".")
    end


    it "check left" do
      expect(maze_runner.check_down([start_vertical, start_horizontal]).to eq(nil)
    end

    it "check up" do
      expect(maze_runner.check_down([start_vertical, start_horizontal]).to eq(nil)
    end

  end

  context "check position from non-start" do

    it "check right" do
      expect(maze_runner.check_right([3,3]).to eq("#")
    end


    it "check down" do
      expect(maze_runner.check_down([3,3]).to eq(".")
    end


    it "check left" do
      expect(maze_runner.check_down([3,3]).to eq("#")
    end

    it "check up" do
      expect(maze_runner.check_down([3,3]).to eq(".")
    end

  end

  context "change position" do

    it "changes the array object to an X "

    it "returns the new position"


  end

end
