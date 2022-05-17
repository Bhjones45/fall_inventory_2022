class LocationInventory < ApplicationRecord
  belongs_to :inventory_items
  belongs_to :location
end
