defmodule Games.RockPaperScissors do
  def play do
    choices = ["rock", "paper", "scissors"]
    user_choice = IO.gets("Choose rock, paper, or scissors: ") |> String.trim()
    ai_choice = Enum.random(choices)

    cond do
      beats?(user_choice, ai_choice) -> IO.puts("You win! #{user_choice} beats #{ai_choice}.")
      beats?(ai_choice, user_choice) -> IO.puts("You lose! #{ai_choice} beats #{user_choice}.")
      user_choice == ai_choice -> IO.puts("Draw")
    end
  end

  defp beats?(player1, player2) do
      {player1, player2} in [{"rock", "scissors"}, {"scissors", "paper"}, {"paper", "rock"}]
  end
end
