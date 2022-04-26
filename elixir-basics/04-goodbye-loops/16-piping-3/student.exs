defmodule Bank do
  def largest_expense_index(balance_history) do
    balance_history
    # Calculate difference between each balance
    |> Enum.zip(tl(balance_history))
    |> Enum.map(fn {x, y} -> y - x end)
    # Search biggest negative difference
    |> Enum.with_index(0)
    |> Enum.min_by(fn {x, _} -> x end)
    # Return index of biggest negative difference
    |> elem(1)
  end
end
