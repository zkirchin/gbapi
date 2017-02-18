class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :height, :mass, :hair_color, :skin_tone, :eye_color, :weapon_of_choice, :profession, :gender, :bondsmage, :organization_leader, :native_city_state, :created_at, :updated_at, :first_appears, :appears_in
  has_many :aliases
  has_one :organization
  has_one :divinity

  def appears_in
    object.books
  end

  def native_city_state
    object.city_state
  end
end
