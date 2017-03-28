class Ad::VehiclesController < ApplicationController

  layout "ad"

  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    binding.pry
    @vehicle = Vehicle.new(params_vehicle)
    if @vehicle.save
      redirect_to [:ad, @vehicle], notice: 'Veículo criado com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @vehicle.update(params_vehicle)
      redirect_to [:ad, @vehicle], notice: 'Veículo atualizado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @vehicle.destroy
    redirect_to ad_vehicles_path, notice: 'Veículo removido com sucesso.'
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def params_vehicle
    params.require(:vehicle).permit(
      :name,
      :vehicle_type,
      :national,
      :country,
      :state,
      :url,
      :address,
      publication_day: []
    )
  end

end
