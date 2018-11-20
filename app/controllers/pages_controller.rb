class PagesController < ApplicationController
  def home
    @events = Event.all.order(created_at: :desc).limit(5)
  end
end
