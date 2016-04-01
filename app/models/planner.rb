class Planner < ActiveRecord::Base
  belongs_to :user
  has_many :semesters
end
