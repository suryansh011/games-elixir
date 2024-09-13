defmodule Games.GuessingGame do

  def play do
    num = Enum.random(1..10)
    guess(num, 5)
  end

  defp guess(num, n) do
    if n == 0 do
      IO.puts("You lose! the answer was #{num}")
    else
      guess = IO.gets("Enter your guess: ")
              |> String.trim()
              |> String.to_integer()

      cond do
        guess < num -> IO.puts("Too low!")
          guess(num, n - 1)
        guess > num -> IO.puts("Too high!")
          guess(num, n - 1)
        guess == num -> IO.puts("Correct! You win!")
      end
    end
  end
end
