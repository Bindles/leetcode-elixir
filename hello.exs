defmodule A do
  def main do
    IO.puts 1 * 3
    a = 12
    b = 13
    IO.puts a + b
    IO.puts Kernel.to_string(a)

    as = Integer.to_string(a)
    bs = Integer.to_string(b)
    IO.puts as <> bs

    IO.puts concatenated_integer =
      "#{a}#{b}"
      |> String.to_integer()

    IO.puts concatenated_integer

    list = [1,2,4]
    array = [4,5,6,7]
    Enum.each(list, fn elem -> IO.puts(elem) end)
    IO.puts Enum.at(list, 1)
    IO.inspect list
    IO.puts Enum.at(list, 0, 1)
    IO.inspect Enum.map(list, fn elem -> elem * 2 end)
    IO.puts [1,2,4] == list
    IO.puts Kernel.length(list) == Kernel.length(array)
    list2 = [ 4 | list ]
    IO.inspect list2
    list3 = [ list | array ]

    IO.inspect list3

    list3 = List.flatten([ list | array ])

    IO.inspect list3

    list4 = [list, list2] |> List.flatten()

    IO.inspect list4

    IO.puts Regex.run ~r{[aeiou]}, "caterpillar"
    # ["a"]
    IO.puts Regex.scan ~r{[aeiou]}, "caterpillar"
    # [["a"], ["e"], ["i"], ["a"]]
    IO.puts Regex.split ~r{[aeiou]}, "caterpillar"
    # ["c", "t", "rp", "ll", "r"]
    #Regex.replace ~r{[aeiou]}, "caterpillar"

    IO.inspect [ 1, 2, 3 ] ++ [ 4, 5, 6 ] # concatenation
    # [1, 2, 3, 4, 5, 6]
    IO.inspect [1, 2, 3, 4] -- [2, 4] # difference
    # [1, 3]
    IO.puts 1 in [1,2,3,4] # membership
    # true
    IO.puts "wombat" in [1, 2, 3, 4]
    # false

    IO.inspect [ name: "Dave", city: "Dallas", likes: "Programming" ]

    IO.inspect %{ "one" => 1, :two => 2, {1,1,1} => 3 }

    name = "José Valim"
    # "José Valim"
    %{ String.downcase(name) => name }
    %{"josé valim" => "José Valim"}

    IO.puts name

    states = %{ "AL" => "Alabama", "WI" => "Wisconsin" }
    #%{"AL" => "Alabama", "WI" => "Wisconsin"}
    IO.inspect states["AL"]
    #"Alabama"

    statez = %{ al: "Alabama", wi: "Wisconsin" }
    #%{"AL" => "Alabama", "WI" => "Wisconsin"}
    IO.inspect statez.al

    # IO.inspect response_types = %{ { :error, :enoent } => :fatal,
    # ...> { :error, :busy } => :retry }
    # %{{:error, :busy} => :retry, {:error, :enoent} => :fatal}
    # IO.inspect response_types[{:error,:busy}]
    #:retry

    IO.inspect colors = %{ red: 0xff0000, green: 0x00ff00, blue: 0x0000ff }
    %{blue: 255, green: 65280, red: 16711680}
    IO.inspect colors[:red]
    #16711680
    IO.inspect colors.green
    #65280




  end
end

A.main()
