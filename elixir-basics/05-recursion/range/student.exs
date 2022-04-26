defmodule Exercise do
  def range(a, b) do
    if a < b do
      [a] ++ range(a + 1, b)
    else
      []
    end
  end
end
