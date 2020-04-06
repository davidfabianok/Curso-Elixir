defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  @doc """
  Fuzzle for fuzzle and fuzzle!
  ## Examples
      iex> FizzBuzz.fuzzle 0,0,1
      "FizzBuzz"
      iex> FizzBuzz.fuzzle 0,1,1
      "Fizz"
      iex> FizzBuzz.fuzzle 1,0,1
      "Buzz"
      iex> FizzBuzz.fuzzle 1,1,1
      1
  """
  def fuzzle(0, 0, _val3), do: "FizzBuzz"
  def fuzzle(0, _val2, _val3), do: "Fizz"
  def fuzzle(_val1, 0, _val3), do: "Buzz"
  def fuzzle(_val1, _va3, val3), do: val3
end
