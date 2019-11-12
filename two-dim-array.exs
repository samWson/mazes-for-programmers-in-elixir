defmodule TwoDimArray do
  def create(w, h) do
    List.duplicate(0, w)
      |> List.duplicate(h)
  end
end
