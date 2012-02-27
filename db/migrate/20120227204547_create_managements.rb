class CreateManagements < ActiveRecord::Migration
  def change
    create_table :managements do |t|
      t.references :wallet
      t.references :customer
      t.string :code_plan_product
      t.string :money
      t.boolean :status
      t.string :segment
      t.references :current_package
      t.string :cycle
      t.string :mark
      t.references :business
      t.references :rank

      t.timestamps
    end
    add_index :managements, :wallet_id
    add_index :managements, :customer_id
    add_index :managements, :current_package_id
    add_index :managements, :business_id
    add_index :managements, :rank_id
  end
end
