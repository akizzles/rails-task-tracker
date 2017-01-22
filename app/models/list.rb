class List < ApplicationRecord
  has_many :items # Adds methods to my model

  validates :name, presence: true
end
