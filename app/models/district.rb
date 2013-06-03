class District < ActiveRecord::Base
  attr_accessible :district_name, :region_id
  belongs_to :region
  has_many :counties, dependent: :destroy
  #validates :district_name, uniqueness: {case_sensitive: false}
  
end
