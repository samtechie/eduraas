class Pupil < ActiveRecord::Base
  attr_accessible :gender, :grade_id
  belongs_to :grade
  MALE = {value: 0, display_name: "Male"}
  FEMALE = {value: 1, display_name: "Female"}

  validates_inclusion_of :gender, :in =>[MALE[:value],FEMALE[:value]]

  def self.get_genders_dropdown
    options ={
    	MALE[:display_name]=> MALE[:value]
    	FEMALE[:display_name]=> FEMALE[:value]
    }
  end

  def gender_displayname
  	return gender == MALE[:value]? MALE[:display_name] : FEMALE[:display_name]
  	
  end

end
