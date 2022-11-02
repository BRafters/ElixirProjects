defmodule CollectionPatternMatching do
  def create_collection do
    [1,2,4,3,6,7]
  end

  def match_collection do
    static_list = create_collection()
    [1,2,4,3,6,7] = static_list
  end

  def non_matching_collection do
    # The elements dont match what is in static_list
    static_list = create_collection()
    [1,2,3] = static_list
  end
end
