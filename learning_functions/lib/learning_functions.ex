defmodule LearningFunctions do
  def anonymous_function(num_one, num_two) do
    # Functions are first class citizens in functional programming languages
    # An anonymous function has no name. These are frequently passed to other functions

    # Defining an anon function
    sum = fn(a, b) -> a + b end
    sum.(num_one, num_two)
  end

  def shorthand(num_one, num_two) do
    sum = &(&1 + &2) # Our parameters are available to us as &1, &2, &3 and so on
    sum.(num_one, num_two)
  end

  def func_pattern do
    # Pattern matching can be applied to function signatures
    # Elixir uses pattern matching to check through all possible match options and select the first matchin option to run

    handle_result = fn
      {:ok, result} -> IO.puts "Handling result..."
      {:ok, _} -> IO.puts "Never run as the previous case runs instead"
      {:error} -> IO.puts "An error has occurred!"
    end

    some_result = 1
    handle_result.({:ok, some_result})
    handle_result.({:error})
  end

  def named_func(name) do
    # We can define functions with names so we can easily refer to them later
    # Functions defined within a module are available to other modules for use
    IO.puts "Hello, " <> name
  end

  # If our function body spans only one line, we can further shorten it with "do:"
  def hello(name), do: "Hello, " <> name

  # Function with default arguments
  def hello_anon(name \\ "Anonymous") do
    # We use \\ if we want some default value
    IO.puts "Hi, " <> name
  end
end
