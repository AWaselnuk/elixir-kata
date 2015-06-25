prefix = fn prefix ->
  fn suffix -> "#{prefix} #{suffix}" end
end

IO.puts prefix.("Beginning").("of the End")
