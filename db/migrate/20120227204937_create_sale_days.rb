class CreateSaleDays < ActiveRecord::Migration
  def change
    create_table :sale_days do |t|
      t.references :wallet
      t.references :customer
      t.datetime :hour
      t.references :user

      t.timestamps
    end
    add_index :sale_days, :wallet_id
    add_index :sale_days, :customer_id
    add_index :sale_days, :user_id
  end
end
