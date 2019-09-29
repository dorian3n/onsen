class ChangeDataRateToHotSprings < ActiveRecord::Migration[5.2]
  def change
    change_column :hot_springs, :rate, :float
  end
end
