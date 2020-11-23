class ComedianSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :city, :personal_website, :headshot
end
