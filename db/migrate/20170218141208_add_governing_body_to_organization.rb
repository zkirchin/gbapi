class AddGoverningBodyToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :governing_body, :boolean
  end
end
