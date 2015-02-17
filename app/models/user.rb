class User < ActiveRecord::Base
  has_many :pickups, dependent: :destroy
  has_secure_password
end
