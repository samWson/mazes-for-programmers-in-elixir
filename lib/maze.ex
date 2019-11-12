defmodule Maze do
  @moduledoc """
  Documentation for Maze.
  """

  @doc """
  Maze.

  ## Examples

      iex> Maze.grid(2, 3)
      [
        %{column: 1, links: [], row: 1},
        %{column: 1, links: [], row: 2},
        %{column: 1, links: [], row: 3},
        %{column: 2, links: [], row: 1},
        %{column: 2, links: [], row: 2},
        %{column: 2, links: [], row: 3}
      ]
  """
  def grid(columns, rows) do
    Enum.map(
      1..columns, fn x -> 1..rows
        |> Enum.map(initialized_cell(x, y)) end
      )
      |> List.flatten
    # Enum.map(1..columns, fn x -> 1..rows |> Enum.map(fn y -> %{column: x, row: y, links: []} end) end) |> List.flatten
  end

  defp initialized_cell(column, row) do
    %{column: column, row: row, links: []}
  end
end
