class AuxiliarManagement < ActiveRecord::Base
  belongs_to :customer
  belongs_to :wallet
end
