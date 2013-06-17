class ParishesController < ApplicationController
  def index
  end

  def create
  end

  def show
  	@parish = Parish.find(params[:id])
  end
end
