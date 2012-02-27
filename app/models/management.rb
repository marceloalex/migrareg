class Management < ActiveRecord::Base
  belongs_to :wallet
  belongs_to :customer
  belongs_to :current_package
  belongs_to :business
  belongs_to :rank
end
