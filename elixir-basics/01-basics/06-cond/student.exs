defmodule Numbers do
  def sign(x) do
    cond do
      x > 0 -> 1
      x < 0 -> -1
      true -> x
    end
  end
end
