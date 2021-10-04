defmodule ListFilterTest do
  use ExUnit.Case

  test "get quantity of odd numbers from string list" do
    list = ["1", "3", "6", "43", "banana", "6", "abc"]

    response = ListFilter.call(list)

    expected_response = 3

    assert response == expected_response
  end
end
