class HensController < ApplicationController
  def index
    @hens = Hen.all
    @hens_map = Hen.geocoded

    @markers = @hens_map.map do |hen|
      {
        lat: hen.latitude,
        lng: hen.longitude
      }
    end
  end

  def show
    @hen = Hen.find(params[:id])
  end

  def new
    @hen = Hen.new
  end

  def create
    @hen = Hen.new(hen_params)
    @hen.user = current_user
    if @hen.save
      redirect_to hen_path(@hen)
    else
      render :new
    end
  end

  private

  def hen_params
    params.require(:hen).permit(:name, :city, :description, :eggs_per_day, :price_per_day, :photo)
  end
end
