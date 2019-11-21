defmodule Coordinates do
  @enforce_keys [:column, :row]
  defstruct [:column, :row]

  @typedoc """
  A set of coordinates describe a specific intersection of a column and row.
  Coordinates can be thought of as X and Y respectively.
  """
  @type t:: %__MODULE__{column: pos_integer(), row: pos_integer()}

  @argument_error_message "Only positive integers above zero are permitted."

  @doc """
  new()

  Returns a struct of coordinates.

  ## Examples

      iex> Coordinates.new(column: 2, row: 3)
      %Coordinates{column: 2, row: 3}
  """
  @spec new(column: pos_integer(), row: pos_integer()) :: %__MODULE__{column: pos_integer(), row: pos_integer()}
  def new(column: column, row: row) do
    cond do
      !is_integer(column) or !is_integer(row) -> raise ArgumentError, @argument_error_message
      column > 0 and row > 0 -> %Coordinates{column: column, row: row}
      true -> raise ArgumentError, @argument_error_message
    end
  end
end
