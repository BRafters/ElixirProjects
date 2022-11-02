defmodule PinOperator do
  # The match operator performs assignment when the left side of the match includes a variable
  # Sometimes this isn't something we want
  # For these scenarios, we use the pin operator (^)
  def create_value do
    5
  end

  def unpinned do
    x = 2
    x = 1 # x is now 1
  end

  def pinned_no_match do
    x = 2
    ^x = 1 # Errors as it is now forced to do pattern matching
  end

  def pinned_match do
    x = create_value()
    ^x = 5
  end

  def key_pin do
    key = "hello"
    %{^key => value} = %{"hello" => "world"}
  end
end
