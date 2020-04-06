defmodule WordCount do
  @moduledoc """
  Documentation for `WordCount`.
  """

  @doc """
  Given a phrase, count the occurrences of each word in that phrase.

  ## Examples

    iex> WordCount.count_words("Hello to all the world world")
    > %{"hello" => 1, "to" => 1, "all" => 1, "the" => 1, "world" => 2}
  """
  def count_words(phrase) do
    String.split(phrase)
    |> Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 + 1)) end)
  end
end
