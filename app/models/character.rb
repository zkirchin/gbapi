class Character < ApplicationRecord
  belongs_to :city_state
  belongs_to :organization
  belongs_to :divinity
  has_many :aliases

  has_many :book_characters
  has_many :books, through: :book_characters

  def first_appears
    self.books.min
  end
end
