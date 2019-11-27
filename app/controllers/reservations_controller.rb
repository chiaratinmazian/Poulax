class ReservationsController < ApplicationController
  before_action :set_hen
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.hen = @hen
    @reservation.user = current_user
    set_total_price
    if @reservation.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def set_total_price
    @days = (@reservation.end_date - @reservation.start_date).to_i
    @reservation.total_price = @days * @reservation.hen.price_per_day
  end

  private

  def set_hen
    @hen = Hen.find(params[:hen_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :user_id)
  end
end
