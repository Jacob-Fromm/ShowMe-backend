class ComedianFanSerializer < ActiveModel::Serializer
  attributes :id, :comedian_id, :fan_id
  has_one :fan
  has_one :comedian
end
