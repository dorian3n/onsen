class RemovePriceFromHotSprings < ActiveRecord::Migration[5.2]
  def change
    remove_column :hot_springs, :price, :integer
  end
end
