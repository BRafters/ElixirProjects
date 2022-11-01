defmodule LearningEnums do
  def intro do
    # All collections with exception of Tuples are enumerables
    # Here, we are just printing out the functions alongside their arity
    Enum.__info__(:functions)
    |> Enum.each(fn({function, arity}) -> IO.puts "#{function}/#{arity}" end)
  end

  def enum_all do
    # When using all?/2, and much of enum, we pass an anonymous function to apply our collections items
    # The entire collection must evaluate to true, else false is returned
    list = ListCreator.create_list
    Enum.all?(list, fn(s) -> String.length(s) == 3 end)

    list = ListCreator.create_string_list
    Enum.all?(list, fn(s) -> String.length(s) > 4 end)
  end

  def enum_any do
    # any?/2 returns true if at least one item evaluates to true
    list = ListCreator.create_list
    Enum.any?(list, fn(s) -> String.length(s) == 5 end)
  end

  def enum_chunk_every do
    # Used for breaking your collection into smaller groups
    list = ListCreator.create_list
    Enum.chunk_every(list, 2) # smaller groups of 2 items
  end

  def enum_chunk_by do
    # If we need to group our collection based on something other than size, we can use the chunk_by/2 function
    # Takes an enumerable and a function
    # When the return on the function changes, a new group is started and begins the creation of the next
    list = ListCreator.create_string_list
    Enum.chunk_by(list, fn(x) -> String.length(x) end)
  end

  def enum_map_every do
    # map_every/3 can be very useful to it every nth items, always hitting the first one:
    list = [1,2,3,4,5]
    Enum.map_every(list, 3, fn(x)-> x + 10 end) # Every third item will be something different here
  end

  def enum_each do
    # May be necessary to iterate over a collection without producing a new value
    list = ListCreator.create_list
    Enum.each(list, fn(element) -> IO.puts element end)
  end

  def enum_map do
    # Used to produce a new collection with any changes you may want
    list = ListCreator.create_num_list
    Enum.map(list, fn(x) -> x - 1 end) # New array with values of one less
  end

  def enum_min do
    list = [5,2,-1,2,3,0]
    Enum.min(list)
  end

  def enum_max do
    list = [5,2,-1,2,3,0]
    Enum.max(list)
  end

  def enum_filter do
    # Filter enables us to filter the collection to include only those elements that evaluate to true
    list = ListCreator.create_num_list
    Enum.filter(list, fn(x) -> x - 6 < 0 end)
  end

  def enum_reduce do
    # We can distill our collection down to a single value
    Enum.reduce([1,4,6], 5, fn(x, acc) -> x + acc end)
  end

  def enum_uniq do
    # Removes duplicates
    Enum.uniq([1,2,2,3,4,5,5,2,6,6,7])
  end
end
