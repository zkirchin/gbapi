class AddReferencesToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_reference :characters, :organization, foreign_key: true
    add_reference :characters, :city_state, foreign_key: true
  end
end
