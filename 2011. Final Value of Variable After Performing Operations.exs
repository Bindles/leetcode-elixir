defmodule Solution do
  @spec final_value_after_operations(operations :: [String.t()]) :: integer
  def final_value_after_operations(operations) do
    Enum.reduce(operations, 0, fn operation, acc ->
      case String.at(operation, 1) do
        "+" -> acc + 1
        _ -> acc - 1
      end
    end)
  end
end

# Call the function and print the returned value
operations = ["--X","X++","X++"]
IO.puts(Solution.final_value_after_operations(operations))
#IO.inspect(result)
