class LineupSerializer < ActiveModel::Serializer
  attributes :id
  has_one :comedian
  has_one :sshow
end
