class CreateCityStates < ActiveRecord::Migration[5.0]
  def change
    create_table :city_states do |t|
      t.string :name
      t.string :terrain
      t.integer :population
      t.string :currency

      t.timestamps
    end
  end
end
