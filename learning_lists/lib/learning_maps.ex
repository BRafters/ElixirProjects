defmodule LearningMaps do
  def create_map do
    # Define a map with %{}
    %{:pi => 3.14, "hello" => :world}
  end

  def create_map_only_atoms do
    %{:pi => 3.14, :world => "hello"}
  end

  def get_pi(map) do
    map[:pi]
  end

  def map_variable do
    # Variables are allowed as map keys
    key = "PI"
    %{key => 3.14}
  end

  def duplicate_values(map) do
    # If a duplicate is added to a map, it will replace the former value
    my_map = create_map()

    # Special syntax for updating maps, only works for existing keys
    # To create a new key, use Map.put
    %{my_map | "hello" => "there"}
  end

  def special_syntax do
    map = create_map()

    # Special syntax for accessing values of map
    map.pi
  end

  def compare_maps do
    map = create_map()
    map2 = create_map()
    IO.puts map == map2
    map2 = %{map2 | :pi => 3.15}
    IO.puts map == map2
  end
end
