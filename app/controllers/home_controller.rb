class HomeController < ApplicationController
  def index
    @events = Current.user.events.limit(3)
    @next_events = Event.published.order(start_date: :asc)
  end
end
