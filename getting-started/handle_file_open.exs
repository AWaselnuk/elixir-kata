# Demonstrate multiple function bodies based on param matching

open_file = fn
  {:ok, file} -> "First line of file: #{IO.read(file, :line)}"
  {:error, _} -> "Error: #{:file.format_error(:error)}"
  # Note :file is referring to the underlying Erlang file module
end

IO.puts open_file.(File.open("concat.exs"))
IO.puts open_file.(File.open("notarealfile"))
