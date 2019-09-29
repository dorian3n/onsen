class AddTotalRateToHotSprings < ActiveRecord::Migration[5.2]
  def change
    add_column :hot_springs, :total_rate, :integer
  end
end
