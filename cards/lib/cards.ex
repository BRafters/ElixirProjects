defmodule Cards do
  def create_deck do
    values = [
      "Ace",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
      "Ten",
      "Jack",
      "Queen",
      "King"
    ]

    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def deal(deck, size_of_hand) do
    Enum.split(deck, size_of_hand)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # Returns a boolean depending if the condition is truthy or falsey
  def contains?(card, deck) do
    Enum.member?(deck, card)
  end

  def save(deck, file_name) do
    binary = :erlang.term_to_binary(deck)
    File.write(file_name, binary)
  end

  def load(file_name) do
    {status, binary} = File.read(file_name)

    case status do
      :ok -> :erlang.binary_to_term binary
      :error -> "File does not exist"
    end
    :erlang.binary_to_term(binary)
  end
end
