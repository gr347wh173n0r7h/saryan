class Major < ActiveRecord::Base
  belongs_to :department
  has_many :catalogs
end
