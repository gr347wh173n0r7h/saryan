class Catalog < ActiveRecord::Base
  has_many :plans
  has_many :courses, through: :plans
end
