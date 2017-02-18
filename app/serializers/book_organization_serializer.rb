class BookOrganizationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :book
  has_one :organization
end
