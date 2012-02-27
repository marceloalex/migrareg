class CreateTeleoperations < ActiveRecord::Migration
  def change
    create_table :teleoperations do |t|
      t.references :number_call
      t.references :wallet
      t.references :customer
      t.references :management_status
      t.references :user
      t.string :quota
      t.datetime :date_management
      t.datetime :hour_management
      t.string :observation
      t.boolean :status
      t.integer :duration_call
      t.string :name_responsible
      t.references :offer
      t.string :dni
      t.string :ruc
      t.string :reference_phone
      t.string :relationship
      t.string :ce
      t.string :domain
      t.string :nonel

      t.timestamps
    end
    add_index :teleoperations, :number_call_id
    add_index :teleoperations, :wallet_id
    add_index :teleoperations, :customer_id
    add_index :teleoperations, :management_status_id
    add_index :teleoperations, :user_id
    add_index :teleoperations, :offer_id
  end
end
