class Ad::VehiclesController < ApplicationController

  layout "ad"

  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
  before_action :set_days_of_week, only: [:new, :edit]

  def index
    @vehicles = Vehicle.order('created_at DESC' ).page params[:page]
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(params_vehicle)
    if @vehicle.save
      redirect_to [:ad, @vehicle], notice: 'Veículo criado com sucesso.'
    else
      render :new
    end
  end

  def show
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

  def set_days_of_week
    @days_of_week = Vehicle.all_days_of_week
  end

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
