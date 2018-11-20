class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @events = Event.all.order(created_at: :desc).limit(5)
  end
end
