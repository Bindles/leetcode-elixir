defmodule A do

  def p(value) do
    IO.puts(value)
  end

  def main do
    p 'hi'
    l = [1,2,3]
    IO.puts(l)
  end

  def ispalindrome?(word) do
    p word == String.reverse(word)
  end

end
A.main()
A.ispalindrome?("racecarz")
