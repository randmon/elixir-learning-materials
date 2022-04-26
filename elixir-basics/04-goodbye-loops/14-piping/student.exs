defmodule Grades do
  def best_students(grades) do
    grades
    |> Enum.sort_by(fn {_, _, g} -> g end, :desc)
    |> Enum.take(3)
    |> Enum.map(fn {_, name, _} -> name end)

  end
end
