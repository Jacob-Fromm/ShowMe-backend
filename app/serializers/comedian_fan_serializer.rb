class ComedianFanSerializer < ActiveModel::Serializer
  attributes :id
  has_one :fan
  has_one :comedian
end
