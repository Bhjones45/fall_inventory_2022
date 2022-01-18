class InventoryItem < ApplicationRecord
  validates :name, presence: true
  validates :unit_price, presence: true
end
