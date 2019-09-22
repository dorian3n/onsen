class RemoveBusinessHoursFromHotSprings < ActiveRecord::Migration[5.2]
  def change
    remove_column :hot_springs, :business_hours, :integer
  end
end
