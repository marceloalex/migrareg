class SaleDayTotal < ActiveRecord::Base
  belongs_to :user
  belongs_to :wallet
  belongs_to :customer
end
