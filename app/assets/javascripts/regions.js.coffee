# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#region_county').hide()
  counties = $('#region_county').html()
  $('#region_district').change ->
  	district = $('#region_district :selected').text()
  	options =  $(counties).filter("optgroup[label='#{district}']").html()
  	if options
  	  $('#region_county').html(options)
  	  $('#region_county').show()
  	else
  	  $('#region_county').empty
  	  $('#region_county').hide()
