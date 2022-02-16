defmodule Math do
  def range_sum(to, from \\ 0, step \\ 1) when is_number(to) and is_number(from) and is_number(step) do
    if to >= from, do: from + range_sum(to, from + step, step), else: 0
  end
end
