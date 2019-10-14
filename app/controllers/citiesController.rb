require_relative '../services/weather_service'
require_relative '../models/city'

class CitiesController < ApplicationController

  def show
    @city = params[:city]
    end

  def new
    @city = City.new(nil)
    end

  def create
    @city = City.new(
    name: params[:city],
    landmark: params[:landmark],
    population: params[:population]
    )
    @city.save
    end

  def update
    end
end
