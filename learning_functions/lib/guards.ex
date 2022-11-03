defmodule LearningGuards do
  # Once Elixir has matched a function, any existing guards will be tested

  # A guard clause is a fragment of code covering a function or method, whcih returns early when some precondition is met

  # Ie: We have two functions with the same signature, we rely on guards to determine which to used based on the arguments type
  def hello(names) when is_list(names) do
    names = Enum.join(names, ", ")

    hello(names)
  end

  def hello(name) when is_binary(name) do
    IO.puts phrase() <> name
  end

  defp phrase(), do: "Hello, "
end
