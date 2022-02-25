class Turn < ApplicationRecord
  belongs_to :game

  scope :cross, -> { where(badge: 'Cross') } 
  scope :circle, -> { where(badge: 'Circle') } 

  scope :x, -> (x) { where(x: x) } 
  scope :y, -> (y) { where(y: y) } 

  scope :position, -> (x, y) { where(x: x, y: y) }

  def self.row_cross(y: nil)
    self.cross.y(y)
  end

  def self.row_circle(y: nil)
    self.circle.y(y)
  end

  def self.column_cross(x: nil)
    self.cross.x(x)
  end

  def self.column_circle(x: nil)
    self.cross.x(x)
  end
end
