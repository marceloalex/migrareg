class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone
      t.references :customer
      t.references :type_phone
      t.string :motive
      t.boolean :status
      t.datetime :disable_date
      t.references :geoloc

      t.timestamps
    end
    add_index :phones, :customer_id
    add_index :phones, :type_phone_id
    add_index :phones, :geoloc_id
  end
end
