class BookCityState < ApplicationRecord
  belongs_to :book
  belongs_to :city_state
end
