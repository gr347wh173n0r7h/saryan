class Catalog < ActiveRecord::Base
  has_many :plans
  has_many :courses, through: :plans
  has_many :academics
  has_many :categories
end
