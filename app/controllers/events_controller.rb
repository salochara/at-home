class EventsController < ApplicationController
  # mount_uploader :photo, PhotoUploader
  # before_action :set_event, only: [:show]
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    @events = policy_scope(Event).take(6)


  end

  def show
    @event = Event.find(params[:id])
    authorize @event

    @markers = {
      lng: @event.longitude,
      lat: @event.latitude,
      infoWindow: { content: render_to_string(partial: "/events/map_windows", locals: { event: @event }) }
    }
  end

  def results
    @query = params.dig(:search, :query)
    if @query.present?
      @events = policy_scope(Event).where.not(latitude: nil, longitude: nil)
      @events = @events.search_by_location(@query)
    else
      @events = policy_scope(Event).take(6)
    end

    @markers = @events.map do |event|
      # byebug
      {
        lng: event.longitude,
        lat: event.latitude,
        infoWindow: { content: render_to_string(partial: "/events/map_windows", locals: { event: event }) }
      }
    end
    authorize @events
  end

  private

  def set_event

  end

  def event_params
    params.require(:event).permit(:query)
  end
end
