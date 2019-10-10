defmodule Maze do
  def grid(columns, rows) do
    length = columns * rows
    List.duplicate(0, length)
  end
end
