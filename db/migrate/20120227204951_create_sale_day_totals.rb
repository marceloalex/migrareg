class CreateSaleDayTotals < ActiveRecord::Migration
  def change
    create_table :sale_day_totals do |t|
      t.datetime :hour
      t.references :user
      t.references :wallet
      t.references :customer
      t.string :validation
      t.string :observation
      t.string :user_validator
      t.datetime :hour_validator

      t.timestamps
    end
    add_index :sale_day_totals, :user_id
    add_index :sale_day_totals, :wallet_id
    add_index :sale_day_totals, :customer_id
  end
end
