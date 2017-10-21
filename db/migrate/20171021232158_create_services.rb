class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :name
      t.text :description
      t.integer :cost

      t.timestamps
    end
  end
end
