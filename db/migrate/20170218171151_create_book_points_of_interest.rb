class CreateBookPointsOfInterest < ActiveRecord::Migration[5.0]
  def change
    create_table :book_points_of_interest do |t|
      t.references :book, foreign_key: true
      t.references :point_of_interest, foreign_key: true

      t.timestamps
    end
  end
end
