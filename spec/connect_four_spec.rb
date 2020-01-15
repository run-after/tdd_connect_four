require './lib/connect_four.rb'

RSpec.describe Board do
  describe "#draw" do
    it "prints out blank board" do
      board = Board.new
      expect{board.draw}.to output("☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n1 2 3 4 5 6 7\n").to_stdout
    end
  end


end

RSpec.describe Game do
  describe "#get_ans" do
    it "gets input from player" do
      game = Game.new
      expect(game.get_ans('☺')).to eql('5')
    end
    it "asks correct user for input" do
      game = Game.new
      game.round = 1
      expect{game.get_ans('☺')}.to output("Player ☺: select a column\n").to_stdout
    end
    it "asks correct user for input" do
      game = Game.new
      game.round = 2
      expect{game.get_ans('☻')}.to output("Player ☻: select a column\n").to_stdout
    end
  end

  describe "#play" do
    it "sets piece on board from player input" do
      game = Game.new
      game.ans = '5'
      game.play
      expect(game.board.column5[0]).to eql('☺')
    end
   
    it "starts stacking pieces if lower row has piece" do
      game = Game.new
      game.board.column1[0] = '☺'
      game.play('1', 1)
      expect(game.board.column1[1]).to eql('☺')
    end
    it "doesn't allow you to overfill the column" do
      game = Game.new
      game.board.column1 = ['☺', '☻', '☺', '☻', '☺', '☻']
      expect{game.play('1', 7)}.to output("Please enter a valid choice\n").to_stdout
    end
  end

  describe "#game_over?" do
    it "returns false if no one got 4 in a row" do
      game = Game.new
      expect(game.game_over?).to eql(false)
    end
    it "returns true if someone got 4 in a row verticaly" do
      game = Game.new
      game.board.column1 = ['☻','☻','☻','☻','☻','☻']
      expect(game.game_over?).to eql(true)
    end
    it "returns true if someone got 4 in a row horizontaly" do
      game = Game.new
      game.board.column1[0] = '☻'
      game.board.column2[0] = '☻'
      game.board.column3[0] = '☻' 
      game.board.column4[0] = '☻'
      expect(game.game_over?).to eql(true)
    end
    it "returns true if someone got 4 in a row horizontaly" do
      game = Game.new
      game.board.column1[3] = '☺'
      game.board.column2[3] = '☺'
      game.board.column3[3] = '☺' 
      game.board.column4[3] = '☺'
      expect(game.game_over?).to eql(true)
    end
  end
end


