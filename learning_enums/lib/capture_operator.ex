defmodule CaptureOperator do
  # Many functions in the Enum module take an anonymous function as an argument to work with each iterable of the enumerable thats passed
  # These anonymous functions are often written shorthand using the Capture operator "&"

  def enum_reg_map do
    list = ListCreator.create_num_list

    #Typical syntax
    Enum.map(list, fn num -> num + 3 end)
  end

  def enum_capture_map do
    list = ListCreator.create_num_list

    # Implementing the capture operator
    # Capturing each iterable of the list of numbers
    # Assigning each iterable to the variable &1 as it is passed to the mapping function
    Enum.map(list, &(&1 + 3))
  end

  def enum_capture_var_map do
    list = ListCreator.create_num_list

    # We can also assign the anonymous function with the capture operator to a variable
    plus_three = &(&1 + 3)
    Enum.map(list, plus_three)
  end

  def anon_with_named_function do
    list = ListCreator.create_num_list

    # Here we call an already defined function in the anonymous function
    Enum.map(list, fn num -> plus_three(num) end)
  end

  def capture_with_named_function do
    list = ListCreator.create_num_list

    # Here we call an already defined function in the anonymous function
    Enum.map(list, &plus_three(&1))
  end

  def plus_three(number) do
    number + 3
  end
end
