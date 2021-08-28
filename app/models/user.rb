class User < ApplicationRecord
  has_secure_password
  has_secure_token :auth_token

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, allow_blank: true
end
