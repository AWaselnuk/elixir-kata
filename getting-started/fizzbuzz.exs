# A FizzBuzz solution

fizz_or_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

fizzbuzz = fn (n) -> fizz_or_buzz.(rem(n, 3), rem(n, 5), n) end

sequence = 10..20

Enum.each(sequence, fn (n) -> fizzbuzz.(n) |> IO.puts end)
