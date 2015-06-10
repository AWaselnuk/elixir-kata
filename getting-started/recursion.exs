defmodule Recursion do

  def print_many(msg, n) when n <= 1 do
    IO.puts msg
  end

  def print_many(msg, n) do
    IO.puts msg
    print_many(msg, n - 1)
  end

end
