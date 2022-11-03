defmodule Arity.Greeter do
  # Functions are named by the combination of given name and arity (number of arguments)
  def hello, do: "Hello anonymous person" # hello/0
  def hello(name), do: "Hello, " <> name  # hello/1
  def hello(name_one, name_two), do: "Hello #{name_one} and #{name_two}" # hello/2
  # These are NOT thought of as function overloads. Elixir interprets these functions as different from each other

  # Functions and Pattern Matching
  # IE: We need a function to accept a map but we're only interested in a particular key
  # We can pattern-match the argument on the presence of that key
  def hello_map(%{name: person_name}) do
    # Behind the scenes, functions are pattern-matching the arguments that they are called with
    IO.puts "Hello, " <> person_name
    # We only pattern matched the :name of our map, thus only binding the value of that key to a variable
    # The function doesn't have knowledge of the rest of fred
  end

  # In order to retain the knowledge of a person, we need to assign that entire map to its own variable for us to be able to use it
  def greet(%{name: person_name} = person) do
    IO.puts "Hello, " <> person_name

    # IE we want to inspect "person" after we greet them
    IO.inspect person
    # We also have two variables we can use instead of one, person & person_name
  end

  def generate_name_map(name, age, color) do
    # A map describing a person named "name"
    user = %{
      name: name,
      age: age,
      fav_color: color
    }

    # The results when we call hello
    # hello_map expects this as an argument: %{name: person_name}
    # As a result of this successful match, the value of :name is bound to person_name in the parameter list
    hello_map(user)
  end

  def no_match_generate_name_map(name, age, color) do
    # A map describing a person named "name"
    user = %{
      first_name: name,
      age: age,
      fav_color: color
    }

    # Elixir pattern-matches the arguments that a function is called with against the arity the function is defined with
    # The results when we call hello

    # hello_map expects this as an argument: %{name: person_name}
    # It finds that there is no match that corresponds to :name in the incoming map, hence an error
    hello_map(user)
  end

  def generate_name_map_awareness(name, age, color) do
    user = %{
      name: name,
      age: age,
      fav_color: color
    }

    # If we want to assign users name to person_name but also want to retain awareness of the entire person map
    greet(user)
  end

  def call_without_name_key(age, color) do
    user = %{
      age: age,
      fav_color: color
    }

    # Elixir pattern-matches at multiple depths because each argument matches agaisn the incoming data independently
    greet(user)
  end
end
