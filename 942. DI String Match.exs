#* 942. DI String Match
s = "IDID"
defmodule Solution do
  @spec di_string_match(s :: String.t) :: [integer]
  def di_string_match(s) do
    String.to_charlist(s)
    |> List.foldr({[], 0, String.length(s)}, fn
      ?I, {list, lo, hi} -> {[hi | list], lo, hi - 1}
      ?D, {list, lo, hi} -> {[lo | list], lo + 1, hi}
    end)
    |> then(fn {list, lo, _} -> [lo | list] end)
  end
end
IO.puts(Solution.di_string_match(s))
