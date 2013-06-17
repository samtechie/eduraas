class ViewInformationController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@regions = Region.all
  	@districts = District.all
  end

  def show
  	@region = Region.find(params[:id])
  end
  
  def display
  	@regions = Region.all
  	
  end
  
end
