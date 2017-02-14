class CreateDivinities < ActiveRecord::Migration[5.0]
  def change
    create_table :divinities do |t|
      t.string :name
      t.string :ideology

      t.timestamps
    end
  end
end
