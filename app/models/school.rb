class School < ActiveRecord::Base
  has_many :departments
  has_many :academics
end
