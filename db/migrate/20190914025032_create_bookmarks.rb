class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :hot_spring_id

      t.timestamps
    end
  end
end
