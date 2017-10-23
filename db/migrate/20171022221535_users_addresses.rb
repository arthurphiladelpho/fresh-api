class UsersAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.integer :address_id
      t.timestamps
    end

    add_index :users, :id, unique: true
    add_index :services, :id, unique: true
    add_index :addresses, :id, unique: true
    add_index :locations, :id, unique: true
    add_index :locations, :user_id
    add_index :locations, :address_id
  end
end