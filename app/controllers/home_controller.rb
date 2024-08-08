class HomeController < ApplicationController
  def index
    @events = Event.all.limit(3)
    @next_events = Event.all.order(start_at: :asc)
  end
end
