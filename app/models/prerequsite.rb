class Prerequsite < ActiveRecord::Base
  belongs_to :course
  belongs_to :prereq, :class_name =>"Course"
end
