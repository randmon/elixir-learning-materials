defmodule Numbers do
  def even?(n), do: rem(n, 2) == 0
  def odd?(n), do: !even?(n)
end
