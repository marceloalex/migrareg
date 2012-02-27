class CreateValidations < ActiveRecord::Migration
  def change
    create_table :validations do |t|
      t.references :wallet
      t.references :customer
      t.references :user
      t.datetime :date_sale
      t.datetime :hour_sale
      t.string :user_validator
      t.datetime :hour_validator
      t.string :observation
      t.integer :status
      t.boolean :Flag
      t.string :line_destiny
      t.string :speedy_destiny
      t.string :cable_destiny

      t.timestamps
    end
    add_index :validations, :wallet_id
    add_index :validations, :customer_id
    add_index :validations, :user_id
  end
end
