class Genre < ApplicationRecord
    has_many :comedian_genres
    has_many :comedians, through: :comedian_genres
end
