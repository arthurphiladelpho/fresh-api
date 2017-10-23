class WorkerRatings < ActiveRecord::Migration[5.0]
  def change
  	create_table :worker_ratings do |t|      
      t.integer :worker_id
      t.integer :client_id
      t.float :rating
      t.text :comments
      t.timestamps
    end
  end
end
