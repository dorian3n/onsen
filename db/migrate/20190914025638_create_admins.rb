class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
