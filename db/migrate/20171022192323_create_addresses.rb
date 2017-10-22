class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :neighborhood
      t.string :street
      t.integer :number
      t.string :complement
      t.integer :cep
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
