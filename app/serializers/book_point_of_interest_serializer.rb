class BookPointOfInterestSerializer < ActiveModel::Serializer
  attributes :id
  has_one :book
  has_one :point_of_interest
end
