class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :user_name
      t.string :email
      t.string :pic_url
      t.date :date_of_birth
      t.string :password

      t.timestamps
    end
  end
end
