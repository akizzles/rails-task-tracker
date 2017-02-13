class User < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
  has_secure_password
  has_many :lists
  has_many :items, through: :lists

end
