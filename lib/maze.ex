defmodule Maze do
  @moduledoc """
  Documentation for Maze.
  """

  @doc """
  Maze.

  ## Examples

      iex> Maze.grid(2, 3)
      [
        %{column: 0, links: [], row: 0},
        %{column: 0, links: [], row: 0},
        %{column: 0, links: [], row: 0},
        %{column: 0, links: [], row: 0},
        %{column: 0, links: [], row: 0},
        %{column: 0, links: [], row: 0}
      ]
  """
  def grid(columns, rows) do
    length = columns * rows
    uninitialized_cell = %{column: 0, row: 0, links: []}

    List.duplicate(uninitialized_cell, length)
    # TODO: initialize the grid cells with their coordinates
  end

  defp initialize_cells(grid) do
    # #map over grid then do two nested ranges with #each for columns and rows
  end
end
