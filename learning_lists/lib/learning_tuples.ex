defmodule LearningTuples do
  def create_tuple do
    # Tuples are similar to lists, bat are stored contiguously in memory
    # Accessing length = fast
    # Modification = expensive
    # A new tuple must be copied entirely to memory
    {3.14, :pi, "Hello World"}
  end

  def read_file do
    # Common for tuples to be used as a way to return additional info from functions
    File.read("../../resources/test.txt")
  end
end
