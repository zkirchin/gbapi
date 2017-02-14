class Book < ApplicationRecord
  def series_number
    self.id
  end
end
