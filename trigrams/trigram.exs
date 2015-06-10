defmodule Trigram do
  require Logger

  def store_line(line) do
    Logger.info String.split(line)
  end

  def set_vocabulary(file_stream) do
    Enum.each(file_stream, &(store_line(&1)))
  end

  def tell_story(vocabulary, story_length) do

  end

  def run(file_path, story_length) do
    File.stream!(file_path)
      |> set_vocabulary
      # |> tell_story(story_length)
  end

end

Trigram.run("operation_haystack.txt", 500)
