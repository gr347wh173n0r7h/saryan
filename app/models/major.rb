class Major < ActiveRecord::Base
  belongs_to :department
  has_many :academics
end
