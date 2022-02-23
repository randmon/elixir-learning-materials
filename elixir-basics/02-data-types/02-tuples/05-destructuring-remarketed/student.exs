defmodule Math do
  def simplify(x)
    when is_number(x)
    when is_atom(x) do
      x
    end
  def simplify({operator, x, y}) when is_atom(operator) do
    case {operator, simplify(x), simplify(y)} do
      {:+, x, y} when is_number(x) and is_number(y) -> x + y
      {:-, x, y} when is_number(x) and is_number(y) -> x - y
      {:*, x, y} when is_number(x) and is_number(y) -> x * y
      {:/, x, y} when is_number(x) and is_number(y) -> x * y
      {:+, 0, x} -> x
      {:+, x, 0} -> x
      {:-, 0, x} -> -x
      {:-, x, 0} -> x
      {:-, x, x} -> 0
      {:*, _, 0} -> 0
      {:*, 0, _} -> 0
      {:*, x, 1} -> x
      {:*, 1, x} -> x
      {:/, x, 1} -> x
      {op, x, y} -> {op, x, y}
    end
  end
end
