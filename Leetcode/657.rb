# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  moves_map = {
    L: [0, -1], R: [0, 1],
    U: [1, 0], D: [-1, 0]
  }
  final_p = moves.upcase.split(//).inject([0, 0]) do |sum, move|
    add = moves_map[move.to_sym]
    [sum, add].transpose.map { |x| x.reduce(:+) }
  end
  x,y = final_p
  x.zero? && y.zero?
end
