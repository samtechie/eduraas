class Parish < ActiveRecord::Base
  attr_accessible :parish_name, :subcounty_id
  belongs_to :subcounty
  has_many :schools, dependent: :destroy
end
