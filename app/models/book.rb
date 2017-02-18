class Book < ApplicationRecord
  has_many :book_characters
  has_many :characters, through: :book_characters

  has_many :book_city_states
  has_many :city_states, through: :book_city_states

  has_many :book_organizations
  has_many :organizations, through: :book_organizations

  has_many :book_points_of_interest
  has_many :points_of_interest, through: :book_points_of_interest

  def series_number
    self.id
  end

  def add_character(character_id)
    BookCharacter.create(book_id: self.id, character_id: character_id)
  end

  def add_city_state(city_state_id)
    BookCityState.create(book_id: self.id, city_state_id: city_state_id)
  end

  def add_organization(organization_id)
    BookOrganization.create(book_id: self.id, organization_id: organization_id)
  end

  def add_point_of_interest(point_of_interest_id)
    BookPointOfInterest.create(book_id: self.id, point_of_interest_id: point_of_interest_id)
  end
end
