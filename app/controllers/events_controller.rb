class EventsController < ApplicationController
  # mount_uploader :photo, PhotoUploader
  # before_action :set_event, only: [:show]
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    @query = params.dig(:search, :query)

    if @query.present?
      @events = policy_scope(Event).search_by_location(@query)
    else
      @events = policy_scope(Event).all
    end
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
  end

  def results
    @events = Event.where.not(latitude: nil, longitude: nil)
    authorize @events

    @markers = @events.map do |flat|
      {
        lng: flat.longitude,
        lat: flat.latitude
      }
    end
  end

  private

  def set_event

  end

  def event_params
    params.require(:event).permit(:query)
  end
end
