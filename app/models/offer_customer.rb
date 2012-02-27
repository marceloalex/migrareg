class OfferCustomer < ActiveRecord::Base
  belongs_to :customer
  belongs_to :wallet
  belongs_to :offer
end
