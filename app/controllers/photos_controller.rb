class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]


  def display_img
    @img = Image.find(params[:id])
    send_data(@img.img, :type => @img.filetype, :filename => @img.filename,
              :disposition => 'inline')
  end


  def index
    @photos = Photo.all
    hash = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=Miami,us&units=imperial&appid=69ee1fd6d0d4bafa14b8b23945a92179").parsed_response
    @cur_temp = (hash["main"]["temp"]).to_i
    @cur_desc = hash["weather"][0]["main"]

  end

  def lookup

  end


end
