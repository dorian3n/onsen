class AddEndingTimeToHotSprings < ActiveRecord::Migration[5.2]
  def change
    add_column :hot_springs, :ending_time, :integer
  end
end
