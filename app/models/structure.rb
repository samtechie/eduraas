class Structure < ActiveRecord::Base
  attr_accessible :completion_status, :school_id
  belongs_to :school

  COMPLETE = {value: 0, display_name: "Complete"}
  INCOMPLETE = {value: 1, display_name: "Incomplete"}

  validates_inclusion_of :completion_status, :in =>[COMPLETE[:value],INCOMPLETE[:value]]

  def self.get_completion_status_dropdown
    options ={
    	COMPLETE[:display_name]=> COMPLETE[:value]
    	INCOMPLETE[:display_name]=> INCOMPLETE[:value]
    }
  end

  def gender_displayname
  	return completion_status == COMPLETE[:value]? COMPLETE[:display_name] : INCOMPLETE[:display_name]
  	
  end
end
