def display_board(board)
  filled_board = []
  board = board.each_slice(3).to_a

  board.each do |a|
    filled_board << a.join(" | ")
  end
  for row in (0..filled_board.length-1)
    if row > 0
      print "-----------\n"
    end
    print " " + filled_board[row] + " \n"
  end
  nil
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if index >= 0
    board[index] == " "
  else
    false
  end
end

def move(board, index, character="X")
  puts "starting everything is okay"
  if valid_move?(board, index)
    puts "everything is okay after #{}valid move?"
    board[index] = character
    display_board(board)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  answer = gets.strip
  move(board, answer)
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
display_board(board)
board.each_slice(3).to_a
