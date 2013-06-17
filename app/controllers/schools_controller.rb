class SchoolsController < ApplicationController
  def index
  end

  def create
  end

  def show
  	@school = School.find(params[:id])
  	respond_to do |format|
  	  format.html
  	  format.pdf  do
  	  	pdf = SchoolPdf.new(@school)
  	  	
  	  	send_data pdf.render,filename: "#{@school.school_name}_report.pdf",
  	  	                     type: "application/pdf",
  	  	                     disposition: "inline"
  	  end
  	  
  	end
  end
  CG_VALUE = 8000
end
