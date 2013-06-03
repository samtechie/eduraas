class County < ActiveRecord::Base
  attr_accessible :county_name, :district_id
  belongs_to :district
  has_many :subcounties, dependent: :destroy
end
