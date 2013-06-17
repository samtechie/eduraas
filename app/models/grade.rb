class Grade < ActiveRecord::Base
  attr_accessible :desk_number, :grade_name, :quarter, :school_id, :stream_number, :teacher_number, :year
  belongs_to :school
  has_many :pupils
  has_many :readingmaterials
  
end
