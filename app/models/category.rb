class Category < ActiveRecord::Base
  belongs_to :catalog
  has_many :courses
end
