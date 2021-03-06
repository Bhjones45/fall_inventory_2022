# frozen_string_literal: true

class CreateInventoryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.string :description
      t.integer :unit_price

      t.timestamps
    end
  end
end
