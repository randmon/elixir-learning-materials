defmodule Shop do
  defp create_discounter(x), do: &(&1 * x)
  def discount(:standard), do: create_discounter(1)
  def discount(:bronze), do: create_discounter(0.95)
  def discount(:silver), do: create_discounter(0.90)
  def discount(:gold), do: create_discounter(0.80)
end
