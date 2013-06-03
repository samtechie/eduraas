class ViewInformationController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@regions = Region.all
  	@districts = District.all
  end

  def show
  end

  
end
