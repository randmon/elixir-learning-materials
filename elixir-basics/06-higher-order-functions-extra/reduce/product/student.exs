defmodule Math do
  def product(ns) do
    Enum.reduce(ns, 1, fn n, acc -> n * acc end)
  end
end
