class ReservationsController < ApplicationController

  def create
    # byebug
    @reservation = Reservation.new(user: current_user, event: Event.find(params[:event_id]))
    authorize @reservation
    if @reservation.save
      redirect_to event_path(Event.find(params[:event_id]))
    else
      puts "Not working"
    end
  end

end
