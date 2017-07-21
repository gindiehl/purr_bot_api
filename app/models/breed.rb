class Breed < ApplicationRecord
  has_many :felines
  validates :name, :presence => true
  
end
