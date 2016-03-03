class Prerequiste < ActiveRecord::Base
  belongs_to :prereq, foreign_key: "prerequisiter_id", class_name: "Course"
  belongs_to :prereq, foreign_key: "prerequisitee_id", class_name: "Course"

end
