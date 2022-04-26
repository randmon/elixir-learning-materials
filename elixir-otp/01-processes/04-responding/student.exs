defmodule Exercise do
  def print(parent_pid) do
    receive do
      message -> IO.puts(message)
      send(parent_pid, "done")
    end
    print(parent_pid)
  end
end

parent_pid = self()
p1 = spawn(fn -> Exercise.print(parent_pid) end)
send(p1, "hello")
send(p1, "world!")
send(p1, "foo")

receive do
  _ -> nil
end
receive do
  _ -> nil
end
receive do
  _ -> nil
end
