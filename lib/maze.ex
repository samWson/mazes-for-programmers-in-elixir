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
    coordinates = build_coordinates(columns: columns, rows: rows)
    build_cells(coordinates)
  end

  defp build_coordinates(columns: columns, rows: rows) do
    Enum.map(1..columns, fn column -> coordinates_for_column(column, 1..rows) end) |> List.flatten()
  end

  defp coordinates_for_column(column, range) do
    Enum.map(range, fn row -> {column, row} end)
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
