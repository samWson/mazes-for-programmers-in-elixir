ExUnit.start()

defmodule MazeTest do
  use ExUnit.Case, async: true

  @columns 3
  @rows 2

  test "returns a list of the correct size" do
    maze = Maze.grid(@columns, @rows)
    assert (length maze) == 6
  end
end
