defmodule Solution do
  @spec is_acronym(words :: [String.t], s :: String.t) :: boolean
  def is_acronym(words, s) do
    Enum.map_join(words, &String.first/1) == s
  end
end
# Call the function inside a module or in the Elixir shell
IO.puts(Solution.is_acronym(["alice", "bob", "charlie"], "abc"))


defmodule Solution do
  @spec is_acronym(words :: [String.t], s :: String.t) :: boolean
  def is_acronym(words, s) do
    acronym = Enum.map(words, &String.at(&1, 0)) |> Enum.join("")
    acronym == s
  end
end
# Call the function inside a module or in the Elixir shell
IO.puts(Solution.is_acronym(["alice", "bob", "charlie"], "abc"))
