class Grains

  def self.square(num)
    raise ArgumentError unless num.between?(1, 64)
    chess_board = []
    (0..63).map { |n| chess_board << 2 ** n }
    num -= 1
    chess_board[num]
  end

  def self.total
    chess_board = (0..63).to_a
    total = chess_board.inject(1){ |x| x * 2 }
    return total - 1
  end

end

module BookKeeping
  VERSION = 1
end