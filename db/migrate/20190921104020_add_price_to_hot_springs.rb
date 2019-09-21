class AddPriceToHotSprings < ActiveRecord::Migration[5.2]
  def change
    add_column :hot_springs, :adult_price, :integer
    add_column :hot_springs, :child_price, :integer
  end
end
