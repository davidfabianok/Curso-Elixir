defmodule EnumOperations do
  @moduledoc """
  Documentation for `EnumOperations`.
  """

  @doc """
  Returns the size of a list.

  ## Examples

      iex> EnumOperations.count([1, 2])
      > 2

  """
  def count(list, val \\ 0)
  def count(list, _val) when not is_list(list), do: nil

  def count([_ | tail], val) do
    val = val + 1
    count(tail, val)
  end

  def count([], val), do: val

  @doc """
  Returns a list  in reverse order.

  ## Examples

      iex> EnumOperations.reverse([1, 2, 3])
      [3, 2, 1]

  """
  def reverse(list) when not is_list(list), do: nil
  def reverse(list), do: reverse(list, [])
  def reverse([], reversed), do: reversed
  def reverse([head | tail], reversed), do: reverse(tail, [head | reversed])


  @doc """
  Returns a list that meets the condition.

  ## Examples

      iex> EnumOperations.filter([1, 2, 3], fn x -> x < 3  end)
      [1, 2]

  """
  def filter(list, func, return \\ [])
  def filter(list, _func, _return) when not is_list(list), do: nil

  def filter([head | tail], func, return) do
    if func.(head) do
      return = return ++ [head]
      filter(tail, func, return)
    else
      filter(tail, func, return)
    end
  end

  def filter([], _func, return), do: return

  @doc """
  Given an lista of listas, concatenates the listas into a single list.

  ## Examples

      iex> Enum.concat([[1, 2], [3 ,4]])
      [1, 2, 3, 4]


  """
  def concat(list, val \\ [])
  def concat(list, _val) when not is_list(list), do: nil

  def concat([head | tail], val) do
    val = val ++ head
    concat(tail, val)
  end

  def concat([], val), do: val
end
