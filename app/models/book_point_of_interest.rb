class BookPointOfInterest < ApplicationRecord
  belongs_to :book
  belongs_to :point_of_interest
end
