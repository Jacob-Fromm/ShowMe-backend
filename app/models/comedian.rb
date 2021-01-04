class Comedian < ApplicationRecord
     # has_secure_password
     # validates :email, uniqueness: true
     has_many :events
     has_many :comedian_fans
     has_many :fans, through: :comedian_fans
     has_many :comedian_genres
     has_many :genres, through: :comedian_genres
end
