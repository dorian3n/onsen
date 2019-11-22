class ChangeColumn < ActiveRecord::Migration[5.2]
  def change 
    change_column :hot_springs, :start_hours, :string

    change_column :hot_springs, :start_minutes, :string

    change_column :hot_springs, :end_hours, :string

    change_column :hot_springs, :end_minutes, :string


  end
end
