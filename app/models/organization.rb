class Organization < ApplicationRecord
  has_many :characters
  belongs_to :city_state

  has_many :book_organizations
  has_many :books, through: :book_organizations

  def leader
    self.characters.each do |character|
      if character.organization_leader?
        character
      end
    end
    return "No organization leader"
  end

  def first_appears
    self.books.min
  end
end
