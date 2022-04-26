defmodule Util do
  def maximum(xs) do
    Enum.reduce(xs, fn x, y -> if x > y, do: x , else: y end)
  end
end
