class RegionsController < ApplicationController
  before_filter :authenticate_user!
  def index
  	authorize! :index, @user, :message => 'Not authorized as an administrator.'
  	@regions = Region.all
  	
  end

  def new
  	
  end

  def edit
  	@regions = Region.all
  	@districts = District.all
  end

  def show
  	@region = Region.find(params[:id])
  	respond_to do |format|
  	  format.json {render json: @region }
  		
  	end
  	
  end
end
