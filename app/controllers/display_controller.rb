class DisplayController < ApplicationController
  layout 'display'
  
  require 'net/http'
  require 'uri'
  
  def recent
    uri = URI.parse("http://mooncolony.org:8000/now")
    response = Net::HTTP.get_response(uri)
    @page_title = "recently played"
    @response = response.body
  end
  
  def favorite
    uri = URI.parse("http://mooncolony.org:8000/favorites")
    response = Net::HTTP.get_response(uri)
    @page_title = "favorites"
    @response = response.body
  end
end
