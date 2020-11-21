class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :is_irl, :is_virtual, :venue, :address, :phone_number, :ticket_link, :venue_websiteticket_price
  has_one :comedian
end
