defmodule Exercise do
  def print() do
    receive do
      message -> IO.puts(message)
    end
    print()
  end
end

p1 = spawn(&Exercise.print/0)
send(p1, "hello")
send(p1, "world!")
send(p1, "foo")
send(p1, "bar")
send(p1, "baz")
send(p1, "qux")
send(p1, "quux")
:timer.sleep(1000)
