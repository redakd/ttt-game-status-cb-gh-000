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
    colone1 = 0
    colone2 = 1
    colone3  = 2
    ligne = 0
    count = 0
    while nb4 <= 8

    position1 = WIN_COMBINATIONS[ligne][colone1]
    position2 = WIN_COMBINATIONS[ligne][colone2]
    position3 = WIN_COMBINATIONS[ligne][colone3]

      if board[position1] == "X" && board[position2] == "X" && board[position3] == "X" or ( board[position1] == "O" && board[position2] == "O" && board[position3] == "O" )
        return WIN_COMBINATIONS.fetch(nb4)
        nb4 = 9
      else
        count += 1
        if count == 8
          return false
        end
      end
    nb4 += 1
  end
end
