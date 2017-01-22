class Item < ApplicationRecord
  belongs_to :list # Adds methods to my model

  validates :description, presence: true
end
