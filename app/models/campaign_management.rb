class CampaignManagement < ActiveRecord::Base
  belongs_to :wallet
  belongs_to :customer
  belongs_to :campaig
end
