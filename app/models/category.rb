class Category < ActiveRecord::Base
  belongs_to :super_cat
  has_many :sub_categories
end
