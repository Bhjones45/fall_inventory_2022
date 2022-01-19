# frozen_string_literal: true

class InventoryItem < ApplicationRecord
  validates :name, presence: true
  validates :unit_price, presence: true

  def self.to_csv
    attributes = %w[id name description unit_price created_at updated_at]
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |item|
        csv << item.attributes.values_at(*attributes)
      end
    end
  end
end
