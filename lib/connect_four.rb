require 'pry'
class Board
  attr_accessor :row1, :row2, :row3, :row4, :row5, :row6, :id
  def initialize
    @id = ['1', '2', '3', '4', '5', '6', '7']
    @row1 = ['☐','☐','☐','☐','☐','☐','☐']
    @row2 = ['☐','☐','☐','☐','☐','☐','☐']
    @row3 = ['☐','☐','☐','☐','☐','☐','☐']
    @row4 = ['☐','☐','☐','☐','☐','☐','☐']
    @row5 = ['☐','☐','☐','☐','☐','☐','☐']
    @row6 = ['☐','☐','☐','☐','☐','☐','☐']

  end

  
  def draw
    puts row6.join(' ')
    puts row5.join(' ')
    puts row4.join(' ')
    puts row3.join(' ')
    puts row2.join(' ')
    puts row1.join(' ')
    puts id.join(' ')
  end

end

class Game
  attr_accessor :round, :board
  def initialize
    @round = 1
    @board = Board.new
  end

  def get_ans(player)
    puts "Player #{player}: select a column"
    ans = gets.chomp
  end

  def play
    if @round % 2 == 0
      player = '☻'
    else
      player = '☺'
    end

    ans = get_ans(player)    

    case ans
    when '1'
      board.row1[0] = player
    when '2'
      board.row1[1] = player
    when '3'
      board.row1[2] = player
    when '4'
      board.row1[3] = player
    when '5'
      board.row1[4] = player
    when '6'
      board.row1[5] = player
    when '7'
      board.row1[6] = player
    else
      puts "Please enter a valid choice"
      puts
      play()
    end
    #board.draw
    #@round += 1
    #play()
  end


end

#game = Game.new
#game.play
#game.board.draw


# ☺
# ☻