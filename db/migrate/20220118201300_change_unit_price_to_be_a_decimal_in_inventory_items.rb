# frozen_string_literal: true

class ChangeUnitPriceToBeADecimalInInventoryItems < ActiveRecord::Migration[5.2]
  def change
    change_column :inventory_items, :unit_price, :decimal, precision: 8, scale: 2
  end
end
