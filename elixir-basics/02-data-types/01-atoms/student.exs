defmodule RockPaperScissors do
  def beats?(:rock, :scissors), do: true
  def beats?(:scissors, :paper), do: true
  def beats?(:paper, :rock), do: true
  def beats?(x, y) when is_atom(x) and is_atom(y), do: false
end

defmodule Cards do
  def toNumber(x) when is_number(x), do: x
  def toNumber(:jack), do: 11
  def toNumber(:queen), do: 12
  def toNumber(:king), do: 13
  def toNumber(:ace), do: 14

  def higher?(x, y), do: toNumber(x) > toNumber(y)
end
