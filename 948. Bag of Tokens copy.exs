defmodule Solution do
  @spec minimum_deletions(word :: String.t, k :: integer) :: integer
  def minimum_deletions(word, k) do
    freq_map = Enum.reduce(word, %{}, fn char, acc ->
      Map.update(acc, char, 1, &(&1 + 1))
    end)

    frequencies = Map.values(freq_map)
    min_freq = Enum.min(frequencies)
    max_freq = Enum.max(frequencies)

    deletions_needed = max_freq - min_freq - k
    if deletions_needed < 0 do
      0
    else
      deletions_needed
    end
  end
end

Solution.minimum_deletions("aabcaba", 0) # Output: 3
Solution.minimum_deletions("dabdcbdcdcd", 2) # Output: 2
Solution.minimum_deletions("aaabaaa", 2) # Output: 1
