class Semester < ActiveRecord::Base
  belongs_to :planner
  belongs_to :saved_plan
  has_many :courses, through: :semester_refs
end
