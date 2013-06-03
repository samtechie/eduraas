class Readingmaterial < ActiveRecord::Base
  attr_accessible :english, :grade_id, :math, :science, :sst
  belongs_to :grade
end
