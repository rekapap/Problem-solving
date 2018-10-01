# @param {Character[][]} board
# @param {String} word
# @return {Boolean}

$branches = [] 
$used = []

def exist(board, word)
    # store the previous positions in an array variable ?
    # store the positions where there is more than 1 possible letters and jump back to the latest if the current rout failed
    #    A
    #  A B A [pos]  [pos][pos][pos] => pos_a.each { |pos| pos.push(word_i)} => pos = [pos1, pos2, wi]
    #    A
  $branches = [] # [pos, w_i]
  $used = []
end

def possible_routes(board, word)
  starts = first_letter(board, word[0])
  match = false
  starts.each do |start_pos| # [ia, il]
    match = true if letter_tracker(board, start_pos, word, 0)
    break if match
  end
  match
end

def first_letter(board, letter)
  positions = []
  board.each_with_index do |array, row|
    array.each_with_index do |ch, col|
      positions << [row, col] if ch == letter
    end
  end
  positions
end


def letter_tracker(board, start_pos, word, w_i)
  # multiple_match = [start_pos] # first letter, [[pos1, pos2, w_i]
  # multiple_m_word = [0]
  # loop
  # do the position check if there is a match jump to there | write to the multiple if there is any / no match (empty array) && multipe  return false w_i + 1
  # jump to the first match, write the rest of the matches to the multiple_match array with word_index, wi + 1
  # break if end of the word => return true / break if ther is no match
  # 
  # used positions
  # current_pos = pos(board, start_pos)
  $used << start_pos # [x,y] board[0][5]
  letter = word[w_i + 1]
  res = next_positions(board, start_pos, letter) # returns the position of the letter given or an empty array
  res.map! { |p| $used.include?(p) ? nil : p }.compact! # delete the used position from matches
  if res.empty? # no match?
    return false if $branches.empty?
    # reset the values for new branch, start the search again
    next_search = $branches.pop
    next_pos = next_search[0..1]
    w_i = next_search[2]
    $used = $used[0..(w_i + 1)]
    letter_tracker(board, next_pos, word, w_i)
  else # match
    if res.length > 1
      res(1..-1).each do |p|
        # $branches << p.push(w_i + 1) # [row, col, 2]
        letter_tracker()
      end
    end
    next_pos = res[0]
    w_i += 1
    return true if w_i == word.length # last letter?
    letter_tracker(board, next_pos, word, w_i)
  end
end

def pos(board, pos)
  board[pos[0]][pos[1]]
end

# for every letter
def next_positions(board, pos, letter)
  top = [pos[0] - 1, pos[1]]
  right = [pos[0], pos[1] + 1]
  bottom = [pos[0] + 1, pos[1]]
  left = [pos[0], pos[1] - 1]
  options = [top, right, bottom, left]
  position_helper(board, pos, letter, options) # return the position of the letter given or an empty array
end

def position_helper(board, pos, letter, options)
  top, right, bottom, left = options
  res = []
  res << postion_check_helper(board, pos, letter, top, 'top')
  res << postion_check_helper(board, pos, letter, right, 'right')
  res << postion_check_helper(board, pos, letter, bottom, 'bottom')
  res << postion_check_helper(board, pos, letter, left, 'left')
  res.compact
end

def postion_check_helper(board, pos, letter, check, direction)
  cond = valid_pos(direction, pos, board)
  if cond
    nil
  else
    board[check[0]][check[1]] == letter ? check : nil
  end
end

def valid_pos(direction, pos, board)
  case direction
  when 'top' then cond = pos[0].zero?
  when 'right'then cond = (pos[1] == (board[0].length - 1))
  when 'bottom' then cond = ((pos[0] + 1) == board.length)
  when 'left' then cond = pos[1].zero?
  end
  cond
end

# def position_options(board, pos) #r array of possible letters,clockwise
#     b_l = board.length - 1
#     r_l = board[0].length - 1
#     # [ia, il]
#     # board[pos[0]][pos[1]]
#     top = (pos[0].zero? nil : board[pos[0]-1][pos[1]])
#     right = (pos[1] == r_l ? nil : board[pos[0]][pos[1]+1])
#     bottom = ((pos[0] + 1) > b_l ? nil : board[pos[0]+1][pos[1]])
#     left = ( pos[1].zero? ? nil : board[pos[0]][pos[1]-1])
#     [top, right, bottom, left]
# end
# # should check the possible positions with letter!

# def letter_check(array, letter) #returns an array of letter indexs
#     res = []
#     array.each_with_index do |ch, i|
#       res << i  if ch == letter
#     end
#     res
# end
