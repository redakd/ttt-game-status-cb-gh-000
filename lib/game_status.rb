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
    number = 0
    nb1 = 0
    nb2 = 1
    nb3 = 2
    nb4 = 0

    while number <= 8

    position1 = WIN_COMBINATIONS[nb4][nb1]
    position2 = WIN_COMBINATIONS[nb4][nb2]
    position3 = WIN_COMBINATIONS[nb4][nb3]

    position_1 = board[position1] # load the value of the board at win_index_1
    position_2 = board[position2] # load the value of the board at win_index_1
    position_3 = board[position3] # load the value of the board at win_index_1

      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return WIN_COMBINATIONS.fetch(nb4)
      else
        false
      end
    nb4 += 1
    number += 1
  end
end
