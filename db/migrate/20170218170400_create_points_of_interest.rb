class CreatePointsOfInterest < ActiveRecord::Migration[5.0]
  def change
    create_table :points_of_interest do |t|
      t.string :name
      t.string :purpose
      t.references :city_state, foreign_key: true

      t.timestamps
    end
  end
end
