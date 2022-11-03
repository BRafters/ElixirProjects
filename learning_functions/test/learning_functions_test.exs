defmodule LearningFunctionsTest do
  use ExUnit.Case
  doctest LearningFunctions

  test "greets the world" do
    assert LearningFunctions.hello() == :world
  end
end
