defmodule Grades do
  def remove_na(grades) do
    Enum.filter(grades, fn n -> n != :na end)
  end
end
