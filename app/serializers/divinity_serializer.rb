class DivinitySerializer < ActiveModel::Serializer
  attributes :id, :name, :ideology, :created_at, :updated_at
  has_many :aliases
end
