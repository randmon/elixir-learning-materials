defmodule Util do
  def follow(map, x) do
    next = Map.get(map, x, x)
    if next == x do
      [x]
    else
      [x | follow(map, next)]
    end
  end
end
