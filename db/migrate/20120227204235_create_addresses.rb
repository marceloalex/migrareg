class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.references :customer
      t.references :type_address
      t.string :motive
      t.boolean :status
      t.datetime :disable_date
      t.references :geoloc

      t.timestamps
    end
    add_index :addresses, :customer_id
    add_index :addresses, :type_address_id
    add_index :addresses, :geoloc_id
  end
end
