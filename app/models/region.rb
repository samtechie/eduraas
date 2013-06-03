class Region < ActiveRecord::Base
  attr_accessible :region_name
  has_many :districts, dependent: :destroy
end
