class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.integer :hot_spring_id
      t.integer :prefecture

      t.timestamps
    end
  end
end
