class CreateCampaignPeople < ActiveRecord::Migration
  def change
    create_table :campaign_people do |t|
      t.references :user
      t.references :campaign

      t.timestamps
    end
    add_index :campaign_people, :user_id
    add_index :campaign_people, :campaign_id
  end
end
