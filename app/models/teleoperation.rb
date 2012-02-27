class Teleoperation < ActiveRecord::Base
  belongs_to :number_call
  belongs_to :wallet
  belongs_to :customer
  belongs_to :management_status
  belongs_to :user
  belongs_to :offer
end
