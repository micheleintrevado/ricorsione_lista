defmodule Impl2 do
  def do_filter_positive_list(filtered_list, [head | tail]) do
    if is_number(head) and head > 0 do
      IO.puts("--------------> Mi trovo qui")
      filtered_list = [head | filtered_list]
    end
    do_filter_positive_list(filtered_list, tail)
  end

  def do_filter_positive_list(filtered_list, []) do
    filtered_list
  end
end
