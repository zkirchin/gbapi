class CreateAliases < ActiveRecord::Migration[5.0]
  def change
    create_table :aliases do |t|
      t.string :name
      t.references :divinity, foreign_key: true

      t.timestamps
    end
  end
end
