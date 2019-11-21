defmodule Maze do
  @moduledoc """
  A maze is an abstraction of a grid of cells linked together to form random
  paths.
  """

  @doc """
  new()

  ## Examples

      iex> extent = Coordinates.new(column: 2, row: 3)
      iex> Maze.new(extent)
      %{
        {1, 1} => [],
        {1, 2} => [],
        {1, 3} => [],
        {2, 1} => [],
        {2, 2} => [],
        {2, 3} => [],
      }
  """
  @spec new(%Coordinates{}) :: map()
  def new(extent) do
    build_cells(generate_coordinates(extent))
  end

  defp generate_coordinates(extent) do
    for x <- 1..extent.column, y <- 1..extent.row, do: {x, y}
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
