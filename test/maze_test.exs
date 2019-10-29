defmodule MazeTest do
  use ExUnit.Case
  doctest Maze

  @columns 3
  @rows 2

  test "returns a list of the correct size" do
    maze = Maze.grid(@columns, @rows)
    assert (length maze) == 6
  end

  test "cell coordinates are initialized" do
    maze = Maze.grid(@columns, @rows)
    first_cell = hd(maze)
    last_cell = List.last(maze)

    assert first_cell == %{column: 1, row: 1, links: []}
    assert last_cell == %{column: 3, row: 2, links: []}
  end
end
