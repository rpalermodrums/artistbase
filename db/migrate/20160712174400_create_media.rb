class CreateMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :media do |t|
      t.string :name
      t.float :price
      t.string :genre
      t.integer :quantity

      t.timestamps
    end
  end
end
