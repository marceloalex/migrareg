class Address < ActiveRecord::Base
  belongs_to :customer
  belongs_to :type_address
  belongs_to :geoloc
end
