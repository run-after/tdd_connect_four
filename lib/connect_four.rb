require 'pry'
class Board
  attr_accessor :column1, :column2, :column3, :column4, :column5, :column6, :column7,:id,
                :row1, :row2, :row3, :row4, :row5, :row6
  def initialize
    @id = ['1', '2', '3', '4', '5', '6', '7']
    @column1 = ['☐','☐','☐','☐','☐','☐']
    @column2 = ['☐','☐','☐','☐','☐','☐']
    @column3 = ['☐','☐','☐','☐','☐','☐']
    @column4 = ['☐','☐','☐','☐','☐','☐']
    @column5 = ['☐','☐','☐','☐','☐','☐']
    @column6 = ['☐','☐','☐','☐','☐','☐']
    @column7 = ['☐','☐','☐','☐','☐','☐']
  end

  def draw

    puts "#{column1[5]} #{column2[5]} #{column3[5]} #{column4[5]} #{column5[5]} #{column6[5]} #{column7[5]}"
    puts "#{column1[4]} #{column2[4]} #{column3[4]} #{column4[4]} #{column5[4]} #{column6[4]} #{column7[4]}"
    puts "#{column1[3]} #{column2[3]} #{column3[3]} #{column4[3]} #{column5[3]} #{column6[3]} #{column7[3]}"
    puts "#{column1[2]} #{column2[2]} #{column3[2]} #{column4[2]} #{column5[2]} #{column6[2]} #{column7[2]}"
    puts "#{column1[1]} #{column2[1]} #{column3[1]} #{column4[1]} #{column5[1]} #{column6[1]} #{column7[1]}"
    puts "#{column1[0]} #{column2[0]} #{column3[0]} #{column4[0]} #{column5[0]} #{column6[0]} #{column7[0]}"
    puts id.join(' ')
  end


end

class Game
  attr_accessor :round, :board, :ans
  def initialize
    @round = 1
    @board = Board.new
    @ans = '0'
    board.draw
  end

  def get_ans(player)
    puts "Player #{player}: select a column"
    ans = gets.chomp
  end

  def game_over?
    row1 = [board.column1[0], board.column2[0], board.column3[0], board.column4[0], 
            board.column5[0], board.column6[0], board.column7[0]]
    row2 = [board.column1[1], board.column2[1], board.column3[1], board.column4[1], 
            board.column5[1], board.column6[1], board.column7[1]]
    row3 = [board.column1[2], board.column2[2], board.column3[2], board.column4[2], 
            board.column5[2], board.column6[2], board.column7[2]]
    row4 = [board.column1[3], board.column2[3], board.column3[3], board.column4[3], 
            board.column5[3], board.column6[3], board.column7[3]]
    row5 = [board.column1[4], board.column2[4], board.column3[4], board.column4[4], 
            board.column5[4], board.column6[4], board.column7[4]]
    row6 = [board.column1[5], board.column2[5], board.column3[5], board.column4[5], 
            board.column5[5], board.column6[5], board.column7[5]]
    diagonal1 = [board.column1[2], board.column2[3], board.column3[4], board.column4[5]]
    diagonal2 = [board.column1[1], board.column2[2], board.column3[3], board.column4[4],
                 board.column5[5]]
    diagonal3 = [board.column1[0], board.column2[1], board.column3[2], board.column4[3],
                 board.column5[4], board.column6[5]]
    diagonal4 = [board.column2[0], board.column3[1], board.column4[2], board.column5[3],
                 board.column6[4], board.column7[5]]
    diagonal5 = [board.column3[0], board.column4[1], board.column5[2], board.column6[3],
                 board.column7[4]]
    diagonal6 = [board.column4[0], board.column5[1], board.column6[2], board.column7[3]]
    diagonal7 = [board.column7[2], board.column6[3], board.column5[4], board.column4[5]]
    diagonal8 = [board.column7[1], board.column6[2], board.column5[3], board.column4[4],
                 board.column3[5]]
    diagonal9 = [board.column7[0], board.column6[1], board.column5[2], board.column4[3],
                 board.column3[4], board.column2[5]]
    diagonal10 =[board.column6[0], board.column5[1], board.column4[2], board.column3[3],
                 board.column2[4], board.column1[5]]
    diagonal11 =[board.column5[0], board.column4[1], board.column3[2], board.column2[3],
                 board.column1[4]]
    diagonal12 =[board.column4[0], board.column3[1], board.column2[2], board.column1[3]]


    if row1.join.include?("☻☻☻☻") || row1.join.include?("☺☺☺☺") ||
       row2.join.include?("☻☻☻☻") || row2.join.include?("☺☺☺☺") ||
       row3.join.include?("☻☻☻☻") || row3.join.include?("☺☺☺☺") ||
       row4.join.include?("☻☻☻☻") || row4.join.include?("☺☺☺☺") ||
       row5.join.include?("☻☻☻☻") || row5.join.include?("☺☺☺☺") ||
       row6.join.include?("☻☻☻☻") || row6.join.include?("☺☺☺☺") ||
       board.column1.join.include?("☻☻☻☻") || board.column1.join.include?("☺☺☺☺") ||
       board.column2.join.include?("☻☻☻☻") || board.column2.join.include?("☺☺☺☺") ||
       board.column3.join.include?("☻☻☻☻") || board.column3.join.include?("☺☺☺☺") ||
       board.column4.join.include?("☻☻☻☻") || board.column4.join.include?("☺☺☺☺") ||
       board.column5.join.include?("☻☻☻☻") || board.column5.join.include?("☺☺☺☺") ||
       board.column6.join.include?("☻☻☻☻") || board.column6.join.include?("☺☺☺☺") ||
       board.column7.join.include?("☻☻☻☻") || board.column7.join.include?("☺☺☺☺") ||
       diagonal1.join.include?("☻☻☻☻") || diagonal1.join.include?("☺☺☺☺") ||
       diagonal2.join.include?("☻☻☻☻") || diagonal2.join.include?("☺☺☺☺") ||
       diagonal3.join.include?("☻☻☻☻") || diagonal3.join.include?("☺☺☺☺") ||
       diagonal4.join.include?("☻☻☻☻") || diagonal4.join.include?("☺☺☺☺") ||
       diagonal5.join.include?("☻☻☻☻") || diagonal5.join.include?("☺☺☺☺") ||
       diagonal6.join.include?("☻☻☻☻") || diagonal6.join.include?("☺☺☺☺") ||
       diagonal7.join.include?("☻☻☻☻") || diagonal7.join.include?("☺☺☺☺") ||
       diagonal8.join.include?("☻☻☻☻") || diagonal8.join.include?("☺☺☺☺") ||
       diagonal9.join.include?("☻☻☻☻") || diagonal9.join.include?("☺☺☺☺") ||
       diagonal10.join.include?("☻☻☻☻") || diagonal10.join.include?("☺☺☺☺") ||
       diagonal11.join.include?("☻☻☻☻") || diagonal11.join.include?("☺☺☺☺") ||
       diagonal12.join.include?("☻☻☻☻") || diagonal12.join.include?("☺☺☺☺") 
      true
    else
      false
    end
  end

  def play(ans='', n=0)
    
    

    if @round % 2 == 0
      player = '☻'
    else
      player = '☺'
    end

    ans = get_ans(player) if ans == ''

    case ans
    when '1'
      if n > board.column1.size
        puts "Please enter a valid choice"
        puts
        play()
      elsif board.column1[n] == '☐'
        board.column1[n] = player
      else
        n += 1
        play(ans, n)
      end
    when '2'
      if n > board.column2.size
        puts "Please enter a valid choice"
        puts
        play()
      elsif board.column2[n] == '☐'
        board.column2[n] = player
      else
        n += 1
        play(ans, n)
      end
    when '3'
      if n > board.column3.size
        puts "Please enter a valid choice"
        puts
        play()
      elsif board.column3[n] == '☐'
        board.column3[n] = player
      else
        n += 1
        play(ans, n)
      end
    when '4'
      if n > board.column4.size
        puts "Please enter a valid choice"
        puts
        play()
      elsif board.column4[n] == '☐'
        board.column4[n] = player
      else
        n += 1
        play(ans, n)
      end
    when '5'
      if n > board.column5.size
        puts "Please enter a valid choice"
        puts
        play()
      elsif board.column5[n] == '☐'
        board.column5[n] = player
      else
        n += 1
        play(ans, n)
      end
    when '6'
      if n > board.column6.size
        puts "Please enter a valid choice"
        puts
        play()
      elsif board.column6[n] == '☐'
        board.column6[n] = player
      else
        n += 1
        play(ans, n)
      end
    when '7'
      if n > board.column7.size
        puts "Please enter a valid choice"
        puts
        play()
      elsif board.column7[n] == '☐'
        board.column7[n] = player
      else
        n += 1
        play(ans, n)
      end
    else
      puts "Please enter a valid choice"
      puts
      play()
    end
    @round += 1
    if game_over?
      board.draw
      puts "Player #{player}  wins!"
      exit
    else
      board.draw
      play()
    end
  end

end

game = Game.new
game.play

=begin

       
       
       
       
       
=end