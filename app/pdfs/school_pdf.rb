require "prawn"
class SchoolPdf < Prawn::Document
  def initialize(school)
  	super(top_margin: 70)
  	@school = school
  	school_name
  	line_items
  	
  end

  def school_name
  	text "School: #{@school.school_name}", size: 30, style: :bold

  	
  end

  def line_items
  	move_down 20
  	table [[1,2],[3,4]]
  end


end