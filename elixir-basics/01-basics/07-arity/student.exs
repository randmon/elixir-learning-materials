defmodule Numbers do
  def maximum(x, y), do: if y < x, do: x, else: y
  def maximum(x, y, z), do: maximum(maximum(x, y), z)
  def maximum(x, y, z, a), do: maximum(maximum(x, y, z),a)
end
