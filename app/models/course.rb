class Course < ActiveRecord::Base
  has_many :plans
  has_many :catalogs, through: :plans
  belongs_to :sub_category

  has_many :prereqs, through: :prereq_prereqs, source:  :prerequister
  has_many :prereq_prereqs, foreign_key:  :prerequisitee_id, class_name: "Prerequiste"

  has_many :prerequees, through: :prerequee_prereqs, source: :prerequee

  has_many :prerequee_prereqs, foreign_key: :prerequisiter_id, class_name: "Prerequiste"
end
