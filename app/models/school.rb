class School < ActiveRecord::Base
  attr_accessible :parish_id, :school_name
  belongs_to :parish
  has_many :grades
  has_many :pupils, through: :grades
  has_many :teachers
  has_many :readingmaterials, through: :grades
  has_many :structures
  
  CG_VALUE = 8000

    
end
