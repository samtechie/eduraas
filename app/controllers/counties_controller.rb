class CountiesController < ApplicationController
  def index
  	@districts = Districts.all
  	@counties = Counties.all
  end

  def show
  	@county = County.find(params[:id])
  end

  def create
  	@district = District.find(params[:district][:district_id])
  	@county = @district.counties.create!(params[:county])
  	 if @county.save
  	   redirect_to @county, :notice => "County added"
     else
       render :new
  	 end
  end

  def edit
  end
end
