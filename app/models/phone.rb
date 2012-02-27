class Phone < ActiveRecord::Base
  belongs_to :customer
  belongs_to :type_phone
  belongs_to :geoloc
end
