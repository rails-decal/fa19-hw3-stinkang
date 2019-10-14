require_relative '../services/weather_service'
require_relative '../models/city'

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @city = params[:city]
    @landmark = params[:landmark]
    @population = params[:population]
    if @city != nil && @city != ""
      @w = WeatherService.get(@city.to_str)
      @temp = (9/5) * (@w[:temperature] - 273) + 32

      city = City.new(
    	name: @city,
    	landmark: @landmark,
    	population: @population,
      weather: @w
      )

      city.save
    else
      @w = ""
    end


  end



end
