class Game < ApplicationRecord
  has_many :turns

  def winner?
    winner = false
    diagonal_1_cross = []
    diagonal_1_circle = []

    diagonal_2_cross = []
    diagonal_2_circle = []
    inversal = [0, 3, 2, 1]
    (1..3).each do |n|
      if self.turns.row_cross(y: n).count == 3
        winner = 'Cross'
        break
      end

      if self.turns.column_cross(x: n).count == 3
        winner = 'Cross'
        break
      end

      if self.turns.row_circle(y: n).count == 3
        winner = 'Circle'
        break
      end

      if self.turns.column_circle(x: n).count == 3
        winner = 'Circle'
        break
      end

      diagonal_node_cross = self.turns.cross.position(n, n)
      diagonal_1_cross << diagonal_node_cross if diagonal_node_cross.present?

      if diagonal_1_cross.count == 3
        winner = 'Cross'
        break
      end

      diagonal_node_circle = self.turns.circle.position(n, n)
      diagonal_1_circle << diagonal_node_circle if diagonal_node_circle.present?

      if diagonal_1_circle.count == 3
        winner = 'Circle'
        break
      end

      diagonal_2_node_cross = self.turns.cross.position(n, inversal[n])
      diagonal_2_cross << diagonal_node_cross if diagonal_2_node_cross.present?

      if diagonal_2_cross.count == 3
        winner = 'Cross'
        break
      end

      diagonal_2_node_circle = self.turns.circle.position(n, inversal[n])
      diagonal_2_circle << diagonal_node_circle if diagonal_2_node_circle.present?

      if diagonal_2_circle.count == 3
        winner = 'Circle'
        break
      end
    end

    winner
  end
end
