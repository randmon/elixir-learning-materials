defmodule Grades do
  def code(g) when g in 0..7, do: "C"
  def code(g) when g in 8..9, do: "B"
  def code(g), do: "A"
  def to_code(grades) do
    Enum.join(Enum.map(grades, &code/1))
  end
end
