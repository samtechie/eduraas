class Subcounty < ActiveRecord::Base
  attr_accessible :county_id, :subcounty_name
  belongs_to :county
  has_many :parishes, dependent: :destroy

end
