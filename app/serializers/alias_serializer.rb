class AliasSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
  belongs_to :divinity
  belongs_to :character
end
