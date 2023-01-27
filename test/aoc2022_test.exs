defmodule Aoc2022Test do
  use ExUnit.Case

  test "day01-1" do
    result = Aoc2022_d01.find_kmax_sum("./files/test_day01.txt", 1)
    assert result == 24000
    IO.puts("Day 01-1: " <> to_string(Aoc2022_d01.find_kmax_sum("./files/day01.txt", 1)))
  end

  test "day01-2" do
    result = Aoc2022_d01.find_kmax_sum("./files/test_day01.txt", 3)
    assert result == 45000
    IO.puts("Day 01-2: " <> to_string(Aoc2022_d01.find_kmax_sum("./files/day01.txt", 3)))
  end

  test "day02-1" do
  end

  test "day02-2" do
  end
end
