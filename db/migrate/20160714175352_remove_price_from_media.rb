class RemovePriceFromMedia < ActiveRecord::Migration[5.0]
  def change
    remove_column :media, :price, :float
  end
end
