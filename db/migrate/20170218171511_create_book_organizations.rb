class CreateBookOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :book_organizations do |t|
      t.references :book, foreign_key: true
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
