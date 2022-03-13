defmodule Functions do
  def compose([], x), do: x
  def compose([a | fs], x), do: compose(fs, a.(x))
end
