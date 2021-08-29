class User < ApplicationRecord
  has_secure_password
  has_secure_token :auth_token

  has_many :routines, dependent: :destroy
  has_many :meals, dependent: :destroy

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, allow_blank: true
end
