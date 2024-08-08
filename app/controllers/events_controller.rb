class EventsController < ApplicationController
  before_action :validate_organizer
  def index
    @events = Event.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
