class User < ApplicationRecord

  has_many :reservations
  has_many :flights, through: :reservation

  has_secure_password
end
