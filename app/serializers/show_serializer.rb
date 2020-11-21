class ShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :about, :is_irl, :is_virtual, :venue, :city
  has_one :producer
end
