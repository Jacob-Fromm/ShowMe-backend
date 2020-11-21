class Comedian < ApplicationRecord
     has_secure_password
     # validates :email, uniqueness: true

     has_many :comedian_genres
     has_many :genres, through: :comedian_genres
end
