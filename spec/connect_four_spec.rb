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
  describe "#play" do
    it "asks correct user for input" do
      game = Game.new
      game.round = 1
      expect{game.play}.to output("Player ☺: select a column\n").to_stdout
    end
    it "asks correct user for input" do
      game = Game.new
      game.round = 2
      expect{game.play}.to output("Player ☻: select a column\n").to_stdout
    end
    it "gets and sets input from player" do
      game = Game.new
      game.play
      allow($stdin).to receive(:gets).and_return('2')
      ans = $stdin.gets
      expect(game.board.row1[1]).to eql('☺')
    end
    it "gets and sets input from player" do
      game = Game.new
      game.play
      game.ans = '3'
      expect(game.board.row1[2]).to eql('☺')
    end
  end

end



















=begin
    describe '#draw' do
    it "prints out current board in terminal" do
      board = Board.new
      expect{board.draw}.to output("☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n1 2 3 4 5 6 7\n").to_stdout
    end
    it "prints out current board in terminal" do
      board = Board.new
      board.row1 = ['☻','☐','☐','☐','☐','☐','☐']
      expect{board.draw}.to output("☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☐ ☐ ☐ ☐ ☐ ☐ ☐\n☻ ☐ ☐ ☐ ☐ ☐ ☐\n1 2 3 4 5 6 7\n").to_stdout
    end
  end
end

RSpec.describe Game do
  describe "#play" do
    it "prompts the player to choose a column" do
      game = Game.new
      expect{game.play}.to output("Player ☺: choose your column\n").to_stdout
    end
    it "sets the correct row variable" do
      game = Game.new
      expect(game.row1).to eql(['☺','☐','☐','☐','☐','☐','☐'])
    end
  end
=end
  


