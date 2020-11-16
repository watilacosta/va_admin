# frozen_string_literal: true

class AirportsController < ApplicationController # :nodoc:
  before_action :set_airport, only: %i[show edit update destroy]

  # GET /airports
  # GET /airports.json
  def index
    @airports = Airport.all
  end

  # GET /airports/1
  # GET /airports/1.json
  def show; end

  # GET /airports/new
  def new
    @airport = Airport.new
  end

  # GET /airports/1/edit
  def edit; end

  # POST /airports
  # POST /airports.json
  def create
    @airport = Airport.new(airport_params)

    if @airport.save
      redirect_to @airport, notice: 'Airport was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /airports/1
  # PATCH/PUT /airports/1.json
  def update
    if @airport.update(airport_params)
      redirect_to @airport, notice: 'Airport was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /airports/1
  # DELETE /airports/1.json
  def destroy
    @airport.destroy
    redirect_to airports_url, notice: 'Airport was successfully destroyed.'
  end

  private

  def set_airport
    @airport = Airport.find(params[:id])
  end

  def airport_params
    params.require(:airport).permit(:icao, :name, :lat, :long)
  end
end
