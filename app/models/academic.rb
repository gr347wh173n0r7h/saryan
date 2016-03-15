class Academic < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
  belongs_to :department
  belongs_to :major
  belongs_to :catalog
end
