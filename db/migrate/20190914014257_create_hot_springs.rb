class CreateHotSprings < ActiveRecord::Migration[5.2]
  def change
    create_table :hot_springs do |t|
      t.integer :user_id
      t.integer :prefecture_id
      t.string :name
      t.string :address
      t.integer :business_hours
      t.string :type
      t.integer :price
      t.string :rate
      t.string :image_id
      t.text :remarks
      t.text :review
      
      t.timestamps
    end
  end
end
