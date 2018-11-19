class EventsController < ApplicationController

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

  private

  def set_event

  end
end
