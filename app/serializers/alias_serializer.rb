class AliasSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
  has_one :divinity
end
