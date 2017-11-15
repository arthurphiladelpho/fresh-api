class ClientRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :client_ratings do |t|
      t.integer :client_id
      t.integer :worker_id
      t.float :rating
      t.text :comments
      t.timestamps
    end
  end
end
