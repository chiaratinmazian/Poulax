class HensController < ApplicationController
  def index
    @hens = Hen.all
  end

  def show
    @hen = Hen.find(params[:id])
  end
end
