class AddRegionToCityState < ActiveRecord::Migration[5.0]
  def change
    add_reference :city_states, :region, foreign_key: true
  end
end
