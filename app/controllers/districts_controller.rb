class DistrictsController < ApplicationController
  def index
    @districts = District.all
    
  end
  def new
  	@district = District.new
  end

  def edit
  	@districts = District.all
  end

  def create
  	@region = Region.find(params[:region][:region_id])
  	@district = @region.districts.create!(params[:district])
  	 if @district.save
  	   redirect_to @district, :notice => "District added"
     else
       render :new
  	 end
  	
  end

  def show
    @district = District.find(params[:id])
    
  end
end
