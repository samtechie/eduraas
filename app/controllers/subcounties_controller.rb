class SubcountiesController < ApplicationController
  def index
  end

  def show
  	@subcounty = Subcounty.find(params[:id])
  end

  def create
  end
end
