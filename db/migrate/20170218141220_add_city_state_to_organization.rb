class AddCityStateToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_reference :organizations, :city_state, foreign_key: true
  end
end
