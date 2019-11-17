defmodule Maze do
  @moduledoc """
  Documentation for Maze.
  """

  @doc """
  Maze.

  ## Examples

      iex> Maze.new(columns: 2, rows: 3)
      %{
        {1, 1} => [],
        {1, 2} => [],
        {1, 3} => [],
        {2, 1} => [],
        {2, 2} => [],
        {2, 3} => [],
      }
  """
  def new(columns: columns, rows: rows) do
    build_cells(generate_coordinates(columns: columns, rows: rows))
  end

  defp generate_coordinates(columns: columns, rows: rows) do
    for x <- 1..columns, y <- 1..rows, do: {x, y}
  end

  defp build_cells(coordinates) do
    [coordinate | rest] = coordinates
    build_cells(rest, %{coordinate => []})
  end

  defp build_cells([], cells), do: cells

  defp build_cells(coordinates, cells) do
    [coordinate | rest] = coordinates
    build_cells(rest, Map.put(cells, coordinate, []))
  end
end
