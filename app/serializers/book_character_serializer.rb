class BookCharacterSerializer < ActiveModel::Serializer
  attributes :id
  has_one :book
  has_one :character
end
