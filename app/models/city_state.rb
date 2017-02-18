class CityState < ApplicationRecord
  has_many :characters
  has_many :organizations
  has_many :points_of_interest
  belongs_to :region

  has_many :book_city_states
  has_many :books, through: :book_city_states

  def governing_body
    self.organizations.each do |organization|
      if organization.governing_body?
        return organization
      end
    end
    return "No governing body"
  end

  def first_appears
    self.books.min
  end
end
