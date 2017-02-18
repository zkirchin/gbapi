class AddLanguageToCityState < ActiveRecord::Migration[5.0]
  def change
    add_column :city_states, :language, :string
  end
end
