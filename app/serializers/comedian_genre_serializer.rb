class ComedianGenreSerializer < ActiveModel::Serializer
  attributes :id, :comedian
  has_one :genre
end
