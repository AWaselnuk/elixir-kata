defmodule Math do

  # Public function
  def sum(a, b) do
    do_sum(a, b)
  end

  def zero?(0) do
    true
  end

  # Example of guard clause in function definition
  def zero?(x) when is_number(x) do
    false
  end

  # Recursion
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end

  # Private function
  defp do_sum(a, b) do
    a + b
  end

end

IO.puts "Math.sum(1, 2)"
IO.puts Math.sum(1, 2)
IO.puts "Math.zero?(0)"
IO.puts Math.zero?(0)
IO.puts "Math.zero?(10)"
IO.puts Math.zero?(10)

# Throws undefined function error
# IO.puts Math.do_sum(1, 2)

