class Review < ActiveRecord::Base
  belongs_to :cocktail
  validates :description, presence: true
  STARS = [0, 1, 2, 3, 4, 5].freeze
  validates :rating, presence: true, numericality: true, inclusion: { in: STARS}
end