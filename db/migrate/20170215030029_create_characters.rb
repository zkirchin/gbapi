class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.float :height
      t.float :mass
      t.string :hair_color
      t.string :skin_tone
      t.string :eye_color
      t.string :weapon_of_choice
      t.string :profession
      t.string :gender
      t.boolean :bondsmage
      t.boolean :organization_leader
      # t.references :city_state, foreign_key: true
      # t.references :organization, foreign_key: true
      t.references :divinity, foreign_key: true

      t.timestamps
    end
  end
end
