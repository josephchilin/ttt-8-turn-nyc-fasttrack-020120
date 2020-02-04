#turn 
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end


#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
def valid_move?(board,index)
  if (position_taken?(board, index) == false) && (board_position?(index) == true)
    return true
  else
    return false
  end   
end

def board_position?(number)
  if number.between?(0,8) == true
    return true
  else
    return false
  end
end

#position_taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

#move 
def move(board, index, character = "X")
  board[index] = character
end  

#input_to_index
def input_to_index(array)
  array.to_i - 1
end