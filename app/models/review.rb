class Review < ApplicationRecord
  rating = [0, 1, 2, 3, 4, 5]

  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: rating }, numericality: { only_integer: true }
end
