class User < ApplicationRecord
  include Clearance::User
  has_secure_password
   validates :email, presence: true, uniqueness: true
end
