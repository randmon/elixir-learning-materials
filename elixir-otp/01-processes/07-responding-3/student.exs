defmodule Counter do
  def counter(current \\ 0) do
    receive do
      sender_pid -> send(sender_pid, current)
    end
    counter(current + 1)
  end
end

pid = spawn(&Counter.counter/0)
parent_pid = self()

send(pid, parent_pid)
receive do
  n -> IO.puts(n) # Should print 0
end

send(pid, parent_pid)
receive do
  n -> IO.puts(n) # Should print 1
end
send(pid, parent_pid)
receive do
  n -> IO.puts(n) # Should print 2
end
