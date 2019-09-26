class RenamePrefectureColumnToPrefectures < ActiveRecord::Migration[5.2]
  def change
    rename_column :prefectures, :prefecture, :name
  end
end
