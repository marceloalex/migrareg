class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_uniqueness_of :dni
  
  belongs_to :profile
end
