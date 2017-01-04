require 'web_game_engine'
require 'tictactoe_board'
require 'tictactoe_rules'
require 'player_user'
require 'player_ai'

describe WebGameEngine do
  let(:board){TictactoeBoard.new}
  let(:ttt_rules){TictactoeRules.new}
  let(:comp_player){PlayerAi.new}
  let(:user_player_1){PlayerUser.new}
  let(:user_player_2){PlayerUser.new}
  let(:new_game_user){ WebGameEngine.new({ttt_board: board, rules: ttt_rules, player_1: user_player_1, player_2: user_player_2})}
  let(:new_game_comp){ WebGameEngine.new({ttt_board: board, rules: ttt_rules, player_1: user_player_1, player_2: comp_player})}


  describe ' #versus_user' do
    it 'returns an instance of a TictactoeBoard' do
      expect(new_game_user.versus_user(board, user_player_1, 0 )).to be_an_instance_of(TictactoeBoard)
    end
  end

  describe ' #versus_comp' do
    it 'returns an instance of a TictactoeBoard' do
      expect(new_game_comp.versus_comp(board, ttt_rules, user_player_1, 0, comp_player)).to be_an_instance_of(TictactoeBoard)
    end
  end


end

