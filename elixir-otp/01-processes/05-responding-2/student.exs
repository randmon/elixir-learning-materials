defmodule Exercise do
  # Module constant
  @answers { :yes, :maybe, :no }

  defp get_answer_for(question) do
    elem(@answers, rem(String.length(question), 3))
  end

  def magic_eight_ball(parent_pid) do
    receive do
      question -> (
        IO.puts(question)
        send(parent_pid, get_answer_for(question)))
    end
    magic_eight_ball(parent_pid)
  end
end

parent_pid = self()
p1 = spawn(fn -> Exercise.magic_eight_ball(parent_pid) end)
send(p1, "is elixir fun?")
receive do
  m -> IO.puts(m)
end
send(p1, "is pineapple pizza good?")
receive do
  m -> IO.puts(m)
end
send(p1, "how about a nice cup of tea?")
receive do
  m -> IO.puts(m)
end
