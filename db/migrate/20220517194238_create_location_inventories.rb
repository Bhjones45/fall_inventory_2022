class CreateLocationInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :location_inventories do |t|
      t.references :inventory_item, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
