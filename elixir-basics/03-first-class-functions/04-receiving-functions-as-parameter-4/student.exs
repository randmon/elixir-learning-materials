defmodule Functions do
  def fixedpoint(f, x) do
    y = f.(x)
    if y == x, do: x, else: fixedpoint(f, y)
  end
end
