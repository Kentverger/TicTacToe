require 'rails_helper'

RSpec.describe Turn, type: :model do
  describe 'associations' do
    it { should belong_to :game }
  end

  describe 'scopes' do
    describe '#cross' do
      it 'should return turns with cross badge' do
        create :turn, badge: 'Cross'

        expect(Turn.cross.first.badge).to eq('Cross')
      end
    end

    describe '#circle' do
      it 'should return turns with circle badge' do
        create :turn, badge: 'Circle'

        expect(Turn.circle.first.badge).to eq('Circle')
      end
    end

    describe '#x' do
      it 'should return turns with a specific x coordinate' do
        create :turn, x: 15

        expect(Turn.x(15).first.x).to eq(15)
      end
    end

    describe 'y' do
      it 'should return turns with a spesific y coordinate' do
        create :turn, y: 16

        expect(Turn.y(16).first.y).to eq(16)
      end
    end

    describe '#position' do
      it 'should return turns with a spesific y coordinate' do
        create :turn, x: 10, y: 18

        expect(Turn.position(10, 18).first.x).to eq(10)
        expect(Turn.position(10, 18).first.y).to eq(18)
      end
    end
  end

  describe '#row_cross' do
    it 'should return the cross points in the specifed row' do
      create :turn, x: 10, y: 18, badge: 'Cross'
      create :turn, x: 11, y: 18, badge: 'Cross'
      create :turn, x: 12, y: 18, badge: 'Cross'

      expect(Turn.row_cross(y: 18).count).to eq(3)
    end
  end

  describe '#row_circle' do
    it 'should return the circle points in the specifed row' do
      create :turn, x: 10, y: 18, badge: 'Circle'
      create :turn, x: 11, y: 18, badge: 'Circle'
      create :turn, x: 12, y: 18, badge: 'Circle'

      expect(Turn.row_circle(y: 18).count).to eq(3)
    end
  end

  describe '#column_cross' do
    it 'should return the cross points in the specifed column' do
      create :turn, x: 10, y: 18, badge: 'Cross'
      create :turn, x: 10, y: 19, badge: 'Cross'
      create :turn, x: 10, y: 20, badge: 'Cross'

      expect(Turn.column_cross(x: 10).count).to eq(3)
    end
  end

  describe '#column_circle' do
    it 'should return the circle points in the specifed column' do
      create :turn, x: 10, y: 18, badge: 'Circle'
      create :turn, x: 10, y: 19, badge: 'Circle'
      create :turn, x: 10, y: 20, badge: 'Circle'

      expect(Turn.column_circle(x: 10).count).to eq(3)
    end
  end
end
