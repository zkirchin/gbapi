class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_date, :series_number, :created_at, :updated_at
  has_many :characters
  has_many :organizations
  has_many :city_states
  has_many :points_of_interest
end
