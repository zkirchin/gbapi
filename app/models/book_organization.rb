class BookOrganization < ApplicationRecord
  belongs_to :book
  belongs_to :organization
end
