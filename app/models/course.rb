class Course < ActiveRecord::Base
  belongs_to :sub_category
  has_many :plans
  has_many :semester_refs
  has_many :catalogs, through: :plans
  has_many :semesters, through: :semester_refs

  has_many :prereq_classes
  has_many :prereqs, :through => :prereqs
  has_many :inverse_prereqs, :class_name => "Prereqs", :foreign_key => "prereq_id"
  has_many :inverse_prereqs, :through => :inverse_prereqs, :source => :course

end
