class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :code_customer
      t.string :name
      t.references :Type_customer
      t.string :email
      t.references :geoloc
      t.string :incharge
      t.string :plucking
      t.string :code_customer
      t.string :localc
      t.string :document

      t.timestamps
    end
    add_index :customers, :Type_customer_id
    add_index :customers, :geoloc_id
  end
end
