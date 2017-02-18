class CityStateSerializer < ActiveModel::Serializer
  attributes :id, :name, :terrain, :population, :currency, :language, :notable_residents, :organizations, :governing_body, :created_at, :updated_at, :first_appears, :appears_in
  belongs_to :region
  has_many :points_of_interest

  def organizations
    object.organizations
  end

  def appears_in
    object.books
  end

  def notable_residents
    object.characters
  end
end
