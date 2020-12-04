class User < ApplicationRecord
    # attr_accessor :name, :email, :password
    has_secure_password
    validates :email, uniqueness: {case_sensitive: false}
end
