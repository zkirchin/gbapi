class BookCityStateSerializer < ActiveModel::Serializer
  attributes :id
  has_one :book
  has_one :city_state
end
