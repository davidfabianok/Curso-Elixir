defmodule ApiResponse do
  @moduledoc """
  Documentation for `ApiResponse`.
  """

  @doc """
  Return api response. using if else
  """
  def handle_response_1({status, _}) do
    if status == :ok do
      "Ok"
    else
      if status == :error do
        "Error"
      else
        :no_match_message_error
      end
    end
  end

  @doc """
  Return api response. using cond.
  """
  def handle_response_2({status, _}) do
    cond do
      status == :ok ->
        "Ok"

      status == :error ->
        "Error"

      true ->
        :no_match_message_error
    end
  end

  @doc """
  Return api response. Using case.
  """
  def handle_response_3({status, _}) do
    case status do
      :ok ->
        "Ok"

      :error ->
        "Error"

      _ ->
        :no_match_message_error
    end
  end

  @doc """
  Return api response. Using functions.
  """
  def handle_response_4(tuple)
  def handle_response_4({:ok, _}), do: "Ok"
  def handle_response_4({:error, _}), do: "Error"
  def handle_response_4({_, _}), do: :no_match_message_error
end
