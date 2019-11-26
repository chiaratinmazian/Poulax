class ReservationsController < ApplicationController
  before_action :set_hen
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.hen = @hen
    if @reservation.save
      redirect_to hen_path(@hen)
    else
      render 'hens/show'
    end
  end

  private

  def set_hen
    @hen = Hen.find(params[:hen_id])
  end

  def reservation_params
    params.require(:reservations).permit(:start_date, :end_date, :user_id)
  end
end
