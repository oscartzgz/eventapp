class EventsController < ApplicationController
  before_action :validate_organizer
  before_action :set_event, only: [ :show, :edit, :update, :destroy ]
  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new()
  end

  def create
    @event = Current.user.events.build(event_params)

    binding.break
    if @event.save
      redirect_to @event, notice: "The event was created."
    else
      render :new
    end
  end

  def edit; end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: "The event was updated."
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :start_at, :end_at, :description, images: [])
  end
end
