defmodule LearningLists do
  def create_list do
    # Lists are simple collections of values which may include multiple types, may also include non-unqique values
    [3.14, :pi, "Apple"]
    # Note: Lists are actually linked lists, getting length & appending is an O(n) operation
  end

  def prepend_value(list, new_value) do
    [new_value | list]
  end

  def list_concatenation(list, new_list) do
    # List concatenation uses the ++/2 operator
    list ++ new_list
    # About ++/2:
    # A function or operator name has two components:
    # The name you give it (++)
    # Its Arity (the number of arguments a given function takes), in this case 2
  end

  def list_subtraction(list, list_to_subtract) do
    # --/2
    list -- list_to_subtract
    # Note: be aware of duplicate values.
    # For every element on the right, the first occurrence of it gets removed from the left
  end

  def head_of_list(list) do
    # When using lists, it is common to work with a lists head and tail
    # head = first element of list
    hd list
  end

  def tail_of_list(list) do
    # tail = rest of the elements
    tl list
  end
end
