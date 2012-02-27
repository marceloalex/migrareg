class CreateAuxiliarManagements < ActiveRecord::Migration
  def change
    create_table :auxiliar_managements do |t|
      t.references :customer
      t.references :wallet
      t.string :name

      t.timestamps
    end
    add_index :auxiliar_managements, :customer_id
    add_index :auxiliar_managements, :wallet_id
  end
end
