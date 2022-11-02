defmodule LearningPatternMatching do
  def return_value do
    # The (=) operator is actually a match operator, compares to the equals sign in algebra
    # Makes Elixir match the values on the left with the values on the right hand
    # If match succeeds, it returns the value of the equation, else it throws an error
    1
  end

  def matching(value) do
    1 = value
  end

  def unmatching(value) do
    2 = value # Error
  end

  def try_out do
    return_value()
    |> matching()
  end
end
