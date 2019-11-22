class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :hot_spring_id
      t.integer :prefecture

      t.timestamps
    end
  end
end
