defmodule Maze do
  def grid(columns, rows) do
    length = columns * rows
    uninitialized_cell = %{column: 0, row: 0, links: []}

    List.duplicate(uninitialized_cell, length)
  end

  defp initialize_cells(grid) do
    # #map over grid then do two nested ranges with #each for columns and rows
  end
end
