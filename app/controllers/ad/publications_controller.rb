class Ad::PublicationsController < ApplicationController

  layout "ad"

  before_action :set_publication, only: [:show, :edit, :update, :destroy]

  def index
    @publications = Publication.all
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(params_publication)
    if @publication.save
      redirect_to [:ad, @publication], notice: 'Publicação criada com sucesso.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_publication
    @publication = Publication.find(params[:id])
  end

  def params_publication
    params.require(:publication).permit(
      :title,
      :description,
      :archive,
      :status,
      :page,
      :link,
      :vehicle_id
    )
  end
end
