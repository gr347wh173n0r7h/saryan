class Plan < ActiveRecord::Base
  belongs_to :catalog
  belongs_to :course
end
