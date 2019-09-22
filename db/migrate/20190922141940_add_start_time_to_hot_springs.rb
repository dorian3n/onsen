class AddStartTimeToHotSprings < ActiveRecord::Migration[5.2]
  def change
    add_column :hot_springs, :start_time, :integer
  end
end
