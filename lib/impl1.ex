defmodule Impl1 do
  def do_filter_positive_list(filtered_list, [head | tail]) when is_number(head) and head >= 0 do
    do_filter_positive_list([head | filtered_list], tail)
  end

  def do_filter_positive_list(filtered_list, [head | tail]) when is_number(head)do
    do_filter_positive_list(filtered_list, tail)
  end

  def do_filter_positive_list(filtered_list, []) do
    filtered_list
  end
end
