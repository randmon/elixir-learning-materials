defmodule Grades do
  def ranking(grades) do
    grades
    |> Enum.filter(fn {_, _, g} -> g >= 10 end)
    |> Enum.sort_by(fn {_, _, g} -> g end, :desc)
    |> Enum.with_index(1)
    |> Enum.map(fn {{_, name, _}, rank} -> "#{rank}. #{name}" end)
    |> Enum.join("\n")

  end
end
