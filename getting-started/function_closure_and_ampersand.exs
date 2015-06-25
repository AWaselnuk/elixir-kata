# Demonstrate function closure
prefix = fn prefix ->
  fn suffix -> "#{prefix} #{suffix}" end
end

IO.inspect prefix.("Beginning").("of the End")
IO.puts "--------"

# Demonstrate the & function notation
# The & operator converts the expression that follows into a function
# Inside that function &1, &2 etc. refer to the function params.

Enum.map [1,2,3,4], fn x -> IO.inspect x + 2 end
IO.puts "should be equal to"
Enum.map [1,2,3,4], &(IO.inspect &1 + 2)

IO.puts "--------"

Enum.each [1,2,3,4], fn x -> IO.inspect x end
IO.puts "should be equal to"
Enum.each [1,2,3,4], &(IO.inspect &1)
