class Course < ActiveRecord::Base
  belongs_to :catalog
  has_many :prerequisites
  has_many :prereqs, :through => :prerequisites


end
