class CreateBookCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :book_characters do |t|
      t.references :book, foreign_key: true
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
