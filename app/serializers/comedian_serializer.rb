class ComedianSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :city, :personal_website, :headshot, :events, :fans
end
