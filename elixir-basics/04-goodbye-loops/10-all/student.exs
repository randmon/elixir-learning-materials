defmodule Grades do
  def all_passed?(grades) do
    Enum.all?(grades, fn g -> g == :na or g >= 10 end)
  end
end
