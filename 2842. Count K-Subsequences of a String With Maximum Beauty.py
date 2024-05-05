from collections import Counter
from functools import reduce
from operator import mul
class Solution:
    def countKSubsequencesWithMaxBeauty(self, s: str, k: int) -> int:
        mod = 1_000_000_007
        ctr = Counter(s)
        if len(ctr) < k: return 0

        _, cnt = zip(*ctr.most_common(k))
        mn = cnt[-1]
        needed, numMn = cnt.count(mn), list(ctr.values()).count(mn)

        result = reduce(mul,filter(lambda x: x != mn, cnt), 1) %mod
        result *= pow(mn, needed) * comb(numMn, needed) %mod

        return result %mod

print(Solution().countKSubsequencesWithMaxBeauty(s,k))
        

defmodule Solution do
  @spec count_k_subsequences_with_max_beauty(s :: String.t, k :: integer) :: integer
  def count_k_subsequences_with_max_beauty(s, k) do
    mod = rem(1_000_000_007)
    freq_map = Enum.reduce(s, %{}, fn ch, acc -> Map.update(acc, ch, 1, &(&1 + 1)) end)
    max_beauty = Enum.reduce(freq_map, 0, fn {_ch, freq}, acc -> acc + freq end)
    beauty_count = Enum.count(freq_map, fn {_ch, freq} -> freq >= k end)

    if beauty_count == 0 do
      return 0
    end

    result = Enum.reduce(1..(k - 1), 1, fn _i, acc -> rem(acc * beauty_count, mod) end)
    result
  end
end