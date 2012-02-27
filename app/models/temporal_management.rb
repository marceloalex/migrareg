class TemporalManagement < ActiveRecord::Base
  belongs_to :management
  belongs_to :management_status
  belongs_to :number_call
end
