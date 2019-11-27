class HensController < ApplicationController
  def index
    @hens = Hen.all
  end

  def show
    @hen = Hen.find(params[:id])
  end

  def new
    @hen = Hen.new
  end

  def create
    @hen = Hen.new(hen_params)
    if @hen.save
      redirect_to 'dashboard'
    else
      render :new
    end
  end

  private

  def hen_params
    params.require(:hen).permit(:name, :city, :description, :eggs_per_day, :price_per_day, :photo)
  end
end
