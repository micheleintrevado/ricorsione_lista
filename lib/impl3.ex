defmodule Impl3 do
  def do_filter_positive_list([ head | tail ]) do
    Enum.filter( [ head | tail ], fn x -> x > 0 end)
  end
end
