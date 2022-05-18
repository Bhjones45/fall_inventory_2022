# frozen_string_literal: true

class LocationInventory < ApplicationRecord
  belongs_to :inventory_item
  belongs_to :location
end
