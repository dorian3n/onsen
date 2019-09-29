class ChangeDataTotalRateToHotSprings < ActiveRecord::Migration[5.2]
  def change
    change_column :hot_springs, :total_rate, :float
  end
end
