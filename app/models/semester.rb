class Semester < ActiveRecord::Base
  belongs_to :planner
  has_many :courses, through: :semester_refs
end
