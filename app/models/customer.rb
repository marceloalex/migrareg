class Customer < ActiveRecord::Base
  belongs_to :Type_customer
  belongs_to :geoloc
end
