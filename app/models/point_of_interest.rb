class PointOfInterest < ApplicationRecord
  belongs_to :city_state

  has_many :book_points_of_interest
  has_many :books, through: :book_points_of_interest

  def first_appears
    self.books.min
  end
end
