defmodule Store do
  def total_cost(prices, basket) do
    Enum.reduce(basket, 0, fn n, acc -> prices[n] + acc end)
  end
end
