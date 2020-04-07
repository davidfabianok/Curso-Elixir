defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  @doc """
  Fuzzle for fuzzle and fuzzle! (Using case)
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
  def fizzle_case(val1, val2, val3) do
    case {val1, val2, val3} do
      {0, 0, _val3} -> "FizzBuzz"
      {0, _val2, _val3} -> "Fizz"
      {_val1, 0, _val3} -> "Buzz"
      _ -> val3
    end
  end

  @doc """
  Fuzzle for fuzzle and fuzzle! (Using cond)
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
  def fizzle_cond(val1, val2, val3) do
    cond do
      val1 == 0 and val2 == 0 -> "FizzBuzz"
      val1 == 0 -> "Fizz"
      val2 == 0 -> "Buzz"
      true -> val3
    end
  end
end
