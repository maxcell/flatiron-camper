class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def create

    @park = Park.find(reservation_params[:park_id])

    if @park.max_capacity > @park.reservations.length + 1
      @reservation = Reservation.create(reservation_params)
      render json: @reservation
    else
      render json: { "error": "Campground is at max capacity"}
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    render json: @reservation.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:camper_name, :park_id)
  end
end
