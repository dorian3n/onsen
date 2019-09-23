class RenameTypeColumnToHotSprings < ActiveRecord::Migration[5.2]
  def change
    rename_column :hot_springs, :type, :hot_spring_status
  end
end
