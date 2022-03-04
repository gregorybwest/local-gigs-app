class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  validates :location, presence: true
  has_many :events
end
