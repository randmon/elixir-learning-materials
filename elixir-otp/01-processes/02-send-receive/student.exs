defmodule Exercise do
  def print() do
    receive do
      message -> IO.puts(message)
    end
  end
end

p1 = spawn(&Exercise.print/0)
send(p1, "hello!")
:timer.sleep(1000)
