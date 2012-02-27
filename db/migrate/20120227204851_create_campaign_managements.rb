class CreateCampaignManagements < ActiveRecord::Migration
  def change
    create_table :campaign_managements do |t|
      t.references :wallet
      t.references :customer
      t.references :campaig

      t.timestamps
    end
    add_index :campaign_managements, :wallet_id
    add_index :campaign_managements, :customer_id
    add_index :campaign_managements, :campaig_id
  end
end
