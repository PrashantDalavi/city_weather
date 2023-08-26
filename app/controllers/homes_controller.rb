class HomesController < ApplicationController
  include HTTParty
  def index
    if params[:city_name].present?
      @data = HTTParty.get("https://api.openweathermap.org/data/2.5/weather?q=#{params[:city_name]}&appid=#{Rails.application.credentials.weather[:api_id]}")
    else 
      @data = nil
    end 

  end
end
