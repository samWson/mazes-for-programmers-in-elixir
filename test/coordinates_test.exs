defmodule CoordinatesTest do
  use ExUnit.Case
  doctest Coordinates, async: true

  test "raises an exception when passed integer arguments less than 1" do
    assert_raise ArgumentError, "Only positive integers above zero are permitted.", fn ->
      Coordinates.new(column: -1, row: -2)
    end

    assert_raise ArgumentError, "Only positive integers above zero are permitted.", fn ->
      Coordinates.new(column: 0, row: 0)
    end
  end

  test "raises an exception when passed non integer arguments" do
    assert_raise ArgumentError, "Only positive integers above zero are permitted.", fn ->
      Coordinates.new(column: 1.2, row: 2.3)
    end

    assert_raise ArgumentError, "Only positive integers above zero are permitted.", fn ->
      Coordinates.new(column: "1", row: '2')
    end
  end
end
