defmodule PrivateFunctions do
  # When we don't want other modules acessing a specific function, we can make it private
  # Private functions can be called only from within their module
  defp hello(name), do: IO.puts "Hello, " <> name <> "!" # Can be used for implementation detail
  def greet(name), do: hello(name) # Calling the private method
end
