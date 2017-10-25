class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
    	t.integer :client_id
    	t.integer :worker_id
    	t.integer :service_id
    	t.integer :location_id
    	t.datetime :start_at
    	t.boolean :canceled
    	t.datetime :end_at

      t.timestamps
    end
  end
end
