class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews

  validates :name, presence: true, uniqueness: true, allow_blank: false

  def cocktail_average_review
    reviews_array = []
    reviews.each { |review| reviews_array << review.rating }
    if reviews.any?
      reviews_array.sum / reviews_array.size
    end
  end
end

