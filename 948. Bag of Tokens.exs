#948. Bag of Tokens | ELIXIR
#*SOL 1
defmodule Solution do
  def bag_of_tokens_score(tokens, power) do
    play(
      tokens |> Enum.sort(),
      tokens |> Enum.sort(:desc),
      power,
      tokens |> Enum.count(),
      0,
      0
    )
  end

  defp play(_up, _down, _power, n, played, score) when played == n, do: score

  defp play([cost | c_rest] = up, [restore | r_rest] = down, power, n, played, score) do
    cond do
      power >= cost -> play(c_rest, down, power - cost, n, played + 1, score + 1)
      score == 0 or played == n - 1 -> score
      true -> play(up, r_rest, power + restore, n, played + 1, score - 1)
    end
  end
end
tokens = [100,200,300,400]
power = 200
IO.puts(Solution.bag_of_tokens_score(tokens, power))

#*SOL 2 | GREEDY | DEQUE | TAIL-RECURSION
defmodule Solution2 do
  @spec bag_of_tokens_score(tokens :: [integer], power :: integer) :: integer
  def bag_of_tokens_score(tokens, power) do
    tokens
    |> Enum.sort()
    |> :queue.from_list()
    |> solve(power, 0, 0)
  end

  defp solve(tokens, power, score, max_score) do
    cond do
      :queue.is_empty(tokens) ->
        max(score, max_score)

      power < :queue.head(tokens) ->
        if score == 0 do
          max_score
        else
          {{:value, largest}, tokens2} = :queue.out_r(tokens)
          solve(tokens2, power + largest, score - 1, max_score)
        end

      true ->
        {{:value, smallest}, tokens2} = :queue.out(tokens)
        solve(tokens2, power - smallest, score + 1, max(score + 1, max_score))
    end
  end
end
tokens = [100,200,300,400]
power = 200
IO.puts(Solution2.bag_of_tokens_score(tokens, power))
