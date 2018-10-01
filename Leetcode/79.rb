def exist(board, word)
  s = Solution.new(board)
  s.exists(word)
end

# Sol
class Solution
  def initialize(board)
    @board = board
  end

  def exists(word)
    return false if word.nil? || word.empty?
    @visited = {}
    first_letters = first_letters(word[0])
    first_letters.each do |first|
      return true if search_word(first, word, 0)
    end
    false
  end

  def search_word(position, word, w_i)
    return true if w_i == word.length
    return false unless valid?(position)
    return false if @visited[position]
    y, x = position
    return false unless @board[y][x] == word[w_i]
    
    @visited[position] = true
    return true if search_word([y + 1, x], word, w_i + 1)
    return true if search_word([y, x + 1], word, w_i + 1)
    return true if search_word([y - 1, x], word, w_i + 1)
    return true if search_word([y, x - 1], word, w_i + 1)
    @visited.delete(position)
    false
  end

  def valid?(position)
    y, x = position
    return false if x < 0 || y < 0 || x >= @board[0].size || y >= @board.size
    true
  end

  def first_letters(letter)
    positions = []
    @board.each_with_index do |array, row|
      array.each_with_index do |ch, col|
        positions << [row, col] if ch == letter
      end
    end
    positions
  end

end

# Tests
board =
[
  ['A','B','C','E'],
  ['S','F','C','S'],
  ['A','D','E','E']
]
puts exist(board,"ABCCED")
puts exist(board,"SEE")
puts exist(board,"ABCB")
