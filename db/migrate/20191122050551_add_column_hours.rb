class AddColumnHours < ActiveRecord::Migration[5.2]
  def change
    add_column :hot_springs, :start_hours, :integer

    add_column :hot_springs, :start_minutes, :integer

    add_column :hot_springs, :end_hours, :integer

    add_column :hot_springs, :end_minutes, :integer

  end
end
