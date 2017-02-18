class DivinitySerializer < ActiveModel::Serializer
  attributes :id, :name, :ideology, :created_at, :updated_at, :followers
  has_many :aliases
  # has_many :characters

  def followers
    object.characters
  end
end
