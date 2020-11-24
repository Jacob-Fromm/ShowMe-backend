class EventSerializer < ActiveModel::Serializer
  attributes :id, :comedian_id, :date_time, :is_irl, :is_virtual, :venue, :address, :phone_number, :ticket_link, :venue_website, :ticket_price
  # has_one :comedian
end
