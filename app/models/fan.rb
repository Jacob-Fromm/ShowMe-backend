class Fan < ApplicationRecord
    has_secure_password
    has_many :comedian_fans
    has_many :comedians, through: :comedian_fans
    # validates :email, uniqueness: true
end
