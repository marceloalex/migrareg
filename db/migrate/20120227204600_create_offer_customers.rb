class CreateOfferCustomers < ActiveRecord::Migration
  def change
    create_table :offer_customers do |t|
      t.references :customer
      t.references :wallet
      t.references :offer
      t.string :promotion

      t.timestamps
    end
    add_index :offer_customers, :customer_id
    add_index :offer_customers, :wallet_id
    add_index :offer_customers, :offer_id
  end
end
