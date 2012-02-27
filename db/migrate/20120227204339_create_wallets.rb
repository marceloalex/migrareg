class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :name
      t.datetime :date_start
      t.datetime :date_end
      t.boolean :status

      t.timestamps
    end
  end
end
