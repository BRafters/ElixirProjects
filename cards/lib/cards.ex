defmodule Cards do
  @moduledoc """
    Provides methods for creating and handling a deck of cards
  """

  @doc """
    Creates a deck of cards, unshuffled
  """
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

  @doc """
    Deals a hand of cards from a deck of cards

    `deck` = Deck you are dealing cards from
    `size_of_hand` = Size of the hand of cards
  """
  def deal(deck, size_of_hand) do
    Enum.split(deck, size_of_hand)
  end

  @doc """
    Shuffles a deck of cards

    `deck` = Deck of cards to shuffle
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
    Determines if the deck, contains a card
  """
  def contains?(card, deck) do
    Enum.member?(deck, card)
  end

  @doc """
    Saves a deck of cards to a file

    `deck` = Deck of cards
    `file_name` = File to write deck to
  """
  def save(deck, file_name) do
    binary = :erlang.term_to_binary(deck)
    File.write(file_name, binary)
  end

  @doc """
    Loads a deck of cards

    `file_name` = File we are looking to load our deck of cards from
  """
  def load(file_name) do
    case File.read(file_name) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "File does not exist"
    end
  end

  @doc """
    Creates a hand of cards

    `hand_size` = Number of cards you'd like in your hand
  """
  def create_hand(hand_size) do
    Cards.create_deck()
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end
