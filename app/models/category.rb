class Category < ActiveRecord::Base
  belongs_to :catalog
  has_many :sub_categories
end
