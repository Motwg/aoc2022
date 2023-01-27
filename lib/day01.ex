defmodule Aoc2022_d01 do
  def sum_calories(path) do
    case File.read(path) do
      {:ok, calories} ->
        calories
        |> String.split("\n")
        |> Enum.chunk_while(
          [],
          fn
            "", acc -> {:cont, Enum.reverse(acc), []}
            element, acc -> {:cont, [element | acc]}
          end,
          fn
            [] -> {:cont, []}
            acc -> {:cont, Enum.reverse(acc), []}
          end
        )
        |> Enum.map(fn x -> Enum.map(x, &String.to_integer(&1)) |> Enum.reduce(&(&1 + &2)) end)

      {:error, reason} ->
        reason
    end
  end

  def find_kmax_sum(path, k) do
    calories = sum_calories(path)

    calories
    |> Enum.sort()
    |> Enum.reverse()
    |> Enum.take(k)
    |> Enum.sum()
  end
end
