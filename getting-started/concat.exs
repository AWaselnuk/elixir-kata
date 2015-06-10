defmodule Concat do

  # In this function, the param sep has a default value of " "
  def join(a, b, sep \\ " ") do
    a <> sep <> b
  end

end
