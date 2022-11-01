defmodule TestProject do
  # IEx.configure(inspect: [charlists: :as_lists])
  def create_list() do
    [:hello, "World", 42]
  end

  def show_head(list_of_stuff) do
    hd list_of_stuff
  end

  def show_tail(list_of_stuff) do
    tl list_of_stuff
  end

  def print_all_results() do
    list = create_list()
    show_head(list)
    show_tail(list)
  end
end
