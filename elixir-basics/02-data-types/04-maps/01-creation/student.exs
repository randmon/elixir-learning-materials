defmodule Util do
  def frequencies([]), do: %{}
  def frequencies([head | tail]) do
    Map.update(frequencies(tail), head, 1, fn n -> n + 1 end)
  end
end
