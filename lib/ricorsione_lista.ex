defmodule RicorsioneLista do
  @moduledoc """
  main module of the list recursion exircise
  """
  use Application

  def start(_type, _args) do
    IO.puts(
      "creazione lista positivi: [" <> Enum.join(filter_positive_list([-1, 0, 1, 2]), ", ") <> "]"
    )

    Supervisor.start_link([], strategy: :one_for_one)
  end

  def filter_positive_list(list) do
    if is_list(list) do
      Impl2.do_filter_positive_list([], list)
    else
      {:error, "non hai inserito una list"}
    end
  end
end
