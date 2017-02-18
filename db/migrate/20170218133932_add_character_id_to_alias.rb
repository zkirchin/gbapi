class AddCharacterIdToAlias < ActiveRecord::Migration[5.0]
  def change
    add_reference :aliases, :character, foreign_key: true
  end
end
