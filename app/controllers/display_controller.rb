class DisplayController < ApplicationController
  layout 'display'
  
  require 'net/http'
  require 'uri'
  
  def recent
    uri = URI.parse("http://mooncolony.org/json")
    response = Net::HTTP.get_response(uri)
    @page_title = "recently played"
    @response = ""
  end

  def favorites
    @page_title = "favorites"
  end
end
