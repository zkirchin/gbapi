class RegionSerializer < ActiveModel::Serializer
  attributes :id, :name, :direction, :created_at, :updated_at
  has_many :city_states
end
