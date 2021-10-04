defmodule ListFilter do
  @moduledoc """
  Filter odd numbers from a given string list and returns its quantity
  """

  import Integer, only: [is_odd: 1]

  def call(list), do: list |> get_numbers_from_list |> get_odd_numbers_from_list |> length

  defp get_numbers_from_list(string_list) do
    string_list
    |> Enum.map(fn element ->
      case Integer.parse(element) do
        {result, _remainder_of_binary} -> result
        status -> status
      end
    end)
    |> Enum.filter(fn element -> is_integer(element) end)
  end

  defp get_odd_numbers_from_list(integers_list) do
    integers_list |> Enum.filter(fn element -> is_odd(element) end)
  end
end
