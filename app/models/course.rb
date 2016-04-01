class Course < ActiveRecord::Base
  belongs_to :sub_category
  has_many :plans
  has_many :catalogs, through: :plans
  has_many :semesters, through: :semester_refs


end
