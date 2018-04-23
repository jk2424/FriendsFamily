class PhotosController < ApplicationController


  def index
    hash = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=Miami,us&units=imperial&appid=69ee1fd6d0d4bafa14b8b23945a92179").parsed_response
    @cur_temp = (hash["main"]["temp"]).to_i
    @cur_desc = hash["weather"][0]["main"]

  end


end
