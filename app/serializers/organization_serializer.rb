class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :purpose, :created_at, :updated_at, :members, :leader, :first_appears, :appears_in
  belongs_to :city_state

  def members
    object.characters
  end

  def appears_in
    object.books
  end
end
