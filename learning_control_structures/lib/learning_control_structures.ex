defmodule LearningControlStructures do
  def if_and_unless(word) do
    if String.valid?(word) do
      "Valid String"
    else 
      "Invalid String"
    end
  end

  def case do
    # If it is necessary to match against multiple patterns, we can use case/2
    case {:ok, "Hello World"} do
      {:ok, result} -> result
      {:error} -> "Error!"
      _ -> "Catch all" # Catches all results, avoids match errors when nothing matches
    end
  end

  def without_catch_all do
    case :even do
      {:odd} -> "odd"
    end
  end

  def with_catch_all do
    # case relies on pattern matching, all rules apply here
    case :even do
      {:odd} -> "odd"
      _ -> "Catch all!" # Consider _ as the else that will match everything else
    end
  end

  def guard_clause do
    case {1,2,3} do
      {1,x,3} when x == 2 -> 
        "Will Match"
      _ -> 
        "Won't Match"
    end
  end

  def cond do
    # When we need to match conditions rather than values, we can use cond
    # akin to else if and elsif in other languages
    cond do
      2 + 2 == 5 ->
        "Untrue"
      2 * 2 == 5 ->
        "Also untrue"
      2 * -2 == 4 ->
        "Also Untrue"
      true -> "Catch all!"
    end
  end

  def with do 
    # "with" is useful when you might use a nested case statement
    # Or situations that cannot be cleanly be piped together
    # With expression is composed of the keywords, generatros, and an expression
    # Uses pattern matching to compare the right side of the "<-" to the left
    user = %{first: "Brennan", last: "Rafters"}

    with {:ok, first} <- Map.fetch(user, :first),
         {:ok, last} <- Map.fetch(user, :last),
         do: last <> ", " <> first 
  end

  def with_no_match do
    # In the event that the expression fails to match, the non-matching value will be returned
    user = %{first: "Brennan"}
    with {:ok, first} <- Map.fetch(user, :first),
    {:ok, last} <- Map.fetch(user, :last),
    do: last <> ", " <> first
  end
end
