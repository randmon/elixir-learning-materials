defmodule Math do
  def sum(ns) do
    Enum.reduce(ns, 0, fn n, acc -> n + acc end)
  end
end
