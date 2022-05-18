# frozen_string_literal: true

class Location < ApplicationRecord
  validates :name, presence: true

  has_many :location_inventories
  has_many :inventory_items, through: :location_inventories
end
