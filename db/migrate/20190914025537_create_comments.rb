class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :hot_spring_id
      t.string :rate
      t.text :comment
      
      t.timestamps
    end
  end
end
