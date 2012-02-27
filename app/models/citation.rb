class Citation < ActiveRecord::Base
  belongs_to :management
  belongs_to :user
end
