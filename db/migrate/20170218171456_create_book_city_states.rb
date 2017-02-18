class CreateBookCityStates < ActiveRecord::Migration[5.0]
  def change
    create_table :book_city_states do |t|
      t.references :book, foreign_key: true
      t.references :city_state, foreign_key: true

      t.timestamps
    end
  end
end
