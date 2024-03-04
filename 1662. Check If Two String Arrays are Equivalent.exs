#1662. Check If Two String Arrays are Equivalent
#*MY SOL
defmodule Solution do
  def array_strings_are_equal(word1, word2) do
    (word1 |> Enum.join()) == (word2 |> Enum.join)
  end
end
#call it
IO.puts(Solution.array_strings_are_equal(["ab", "c"], ["a", "bc"]))
