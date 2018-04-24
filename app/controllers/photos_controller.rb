class PhotosController < ApplicationController

  def index

    zip = params[:zip_code] || "33131"

    @city = {q: ZipCodes.identify(zip)[:city]}
    @city2 = ZipCodes.identify(zip)[:city]

    @weather = HTTParty.get(
      "http://api.openweathermap.org/data/2.5/weather?#{URI.encode_www_form(@city).gsub("+", "%20")},us&units=imperial&appid=69ee1fd6d0d4bafa14b8b23945a92179")
      .parsed_response


    @cur_temp = (@weather["main"]["temp"]).to_i
    @cur_desc = (@weather["weather"][0]["id"]).to_i



  end

  def lookup



  end


end
