class SemesterRef < ActiveRecord::Base
  belongs_to :course
  belongs_to :semester
end
