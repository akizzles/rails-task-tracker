class List < ApplicationRecord
  has_many :items # Adds methods to my model
  belongs_to :user
  validates :name, presence: true
end
