class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :fan_id
      t.float :total_price

      t.timestamps
    end
  end
end
