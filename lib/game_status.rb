# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]

  def won?(board)
    nb1 = 0
    nb2 = 1
    nb3 = 2
    nb4 = 0
    count = 0
    while nb4 <= 8

    position1 = WIN_COMBINATIONS[nb4][nb1]
    position2 = WIN_COMBINATIONS[nb4][nb2]
    position3 = WIN_COMBINATIONS[nb4][nb3]

      if board[position1] == "X" && board[position2] == "X" && board[position3] == "X" or ( board[position1] == "O" && board[position2] == "O" && board[position3] == "O" )
        return WIN_COMBINATIONS.fetch(nb4)
      else
          count += 1
      end
    nb4 += 1
  end
  if count == 8
     false
  end
end
