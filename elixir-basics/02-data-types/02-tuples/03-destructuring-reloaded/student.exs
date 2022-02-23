defmodule Cards do
  def numericValue(x) when is_number(x), do: x
  def numericValue(:jack), do: 11
  def numericValue(:queen), do: 12
  def numericValue(:king), do: 13
  def numericValue(:ace), do: 14

  def higher?({value1, suit}, {value2, suit}, _), do: numericValue(value1) > numericValue(value2)
  def higher?({_, suit1}, {_, trump}, trump) when suit1 != suit2, do: false
  def higher?(_, _, _), do: true
end
