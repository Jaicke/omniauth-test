class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :photo_url
      t.string :password

      t.timestamps
    end
    add_index :users, :name
    add_index :users, :email
    add_index :users, :photo_url
    add_index :users, :password
  end
end
