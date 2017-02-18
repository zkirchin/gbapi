class PointOfInterestSerializer < ActiveModel::Serializer
  attributes :id, :name, :purpose, :created_at, :updated_at, :first_appears, :appears_in
  belongs_to :city_state

  def appears_in
    object.books
  end
end
