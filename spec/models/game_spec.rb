require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'associations' do
    it { should have_many :turns }
  end

  describe '.winner?' do
    it 'Should return Cross if the game have a winner if the first row have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 1, y: 1, badge: 'Cross')
      game.turns << create(:turn, x: 2, y: 1, badge: 'Cross')
      game.turns << create(:turn, x: 3, y: 1, badge: 'Cross')

      expect(game.winner?).to eq('Cross')
    end

    it 'Should return Circle if the game have a winner if the second row have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 1, y: 2, badge: 'Circle')
      game.turns << create(:turn, x: 2, y: 2, badge: 'Circle')
      game.turns << create(:turn, x: 3, y: 2, badge: 'Circle')

      expect(game.winner?).to eq('Circle')
    end

    it 'Should return Cross if the game have a winner if the third row have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 1, y: 3, badge: 'Cross')
      game.turns << create(:turn, x: 2, y: 3, badge: 'Cross')
      game.turns << create(:turn, x: 3, y: 3, badge: 'Cross')

      expect(game.winner?).to eq('Cross')
    end

    it 'Should return Circle if the game have a winner if the first column have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 1, y: 3, badge: 'Circle')
      game.turns << create(:turn, x: 1, y: 2, badge: 'Circle')
      game.turns << create(:turn, x: 1, y: 1, badge: 'Circle')

      expect(game.winner?).to eq('Circle')
    end

    it 'Should return Cross if the game have a winner if the second column have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 2, y: 3, badge: 'Cross')
      game.turns << create(:turn, x: 2, y: 2, badge: 'Cross')
      game.turns << create(:turn, x: 2, y: 1, badge: 'Cross')

      expect(game.winner?).to eq('Cross')
    end

    it 'Should return Circle if the game have a winner if the third column have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 3, y: 3, badge: 'Circle')
      game.turns << create(:turn, x: 3, y: 2, badge: 'Circle')
      game.turns << create(:turn, x: 3, y: 1, badge: 'Circle')

      expect(game.winner?).to eq('Circle')
    end

    it 'Should return Cross if the game have a winner if the first diagonal have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 1, y: 1, badge: 'Cross')
      game.turns << create(:turn, x: 2, y: 2, badge: 'Cross')
      game.turns << create(:turn, x: 3, y: 3, badge: 'Cross')

      expect(game.winner?).to eq('Cross')
    end

    it 'Should return Circle if the game have a winner if the first diagonal have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 1, y: 3, badge: 'Circle')
      game.turns << create(:turn, x: 2, y: 2, badge: 'Circle')
      game.turns << create(:turn, x: 3, y: 1, badge: 'Circle')

      expect(game.winner?).to eq('Circle')
    end

    it 'Should false if the game dont have a winner if the first row have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 1, y: 1, badge: 'Cross')
      game.turns << create(:turn, x: 2, y: 1, badge: 'Circle')
      game.turns << create(:turn, x: 3, y: 1, badge: 'Cross')

      expect(game.winner?).to eq(false)
    end

    it 'Should false if the game dont have a winner if the first column have 3 slots with the same badge' do
      game = create :game
      game.turns << create(:turn, x: 1, y: 3, badge: 'Cross')
      game.turns << create(:turn, x: 1, y: 2, badge: 'Circle')
      game.turns << create(:turn, x: 1, y: 1, badge: 'Circle')

      expect(game.winner?).to eq(false)
    end
  end
end
