class EventsController < ApplicationController
  # mount_uploader :photo, PhotoUploader
  # before_action :set_event, only: [:show]
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def index
    @events = policy_scope(Event).all
  end

  def show
    @event = Event.find(params[:id])

    authorize @event
  end

  def results
    @events = Event.where.not(latitude: nil, longitude: nil)

    @markers = @events.map do |flat|
      {
        lng: flat.longitude,
        lat: flat.latitude
      }
    end
    @events = policy_scope(Event).all
    # @movies = policy_scope(Movie).top_6


  end

  private

  def set_event

  end
end
