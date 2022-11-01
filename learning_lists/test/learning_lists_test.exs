defmodule LearningListsTest do
  use ExUnit.Case
  doctest LearningLists

  test "greets the world" do
    assert LearningLists.hello() == :world
  end
end
