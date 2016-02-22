class Catalog < ActiveRecord::Base
  belongs_to :major
  has_many :courses

end
