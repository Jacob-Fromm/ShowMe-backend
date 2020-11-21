class ShowFanSerializer < ActiveModel::Serializer
  attributes :id
  has_one :fan
  has_one :show
end
