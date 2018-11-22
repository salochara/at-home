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
  end

  def results
    @query = params.dig(:search, :query)
    if @query.present? && Event.where.not(latitude: nil, longitude: nil)
      @events = policy_scope(Event).search_by_location(@query)
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

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user = current_user
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end


  def edit

  end

  def update
  end

  private

  def set_event

  end

  def event_params
    params.require(:event).permit(:query, :title, :description, :capacity, :location, :date, :photo)
  end
end







