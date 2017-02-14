class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_date, :series_number, :created_at, :updated_at
end
