class RecordSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :year, :price
end
