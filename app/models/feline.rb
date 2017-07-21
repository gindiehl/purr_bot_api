class Feline < ApplicationRecord
  belongs_to :breed
  validates :name, :age, :coat_color, :presence => true
  scope :random, -> (search) { where("random ?", "%#{search}")}
end
