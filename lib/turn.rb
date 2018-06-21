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

def input_to_index(input)
end

def valid_move?(board, index)
end

def move(board, index, character)
end

def turn(board)
  puts "Please enter 1-9:"
  gets.strip
end
