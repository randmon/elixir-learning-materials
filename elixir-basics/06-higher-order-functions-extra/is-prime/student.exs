defmodule Math do
  def prime?(n) when n <= 1, do: false
  def prime?(n) when n == 2, do: true
  def prime?(n) do
    Enum.all?(2..ceil(:math.sqrt(n)), fn x -> rem(n, x) != 0 end)
  end
end
