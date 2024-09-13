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

    if @event.save
      redirect_to @event, notice: "The event was created."
    else
      render :new
    end
  end

  def edit; end

  def update
    cleaned_event_params = event_params.to_h
    cleaned_event_params.delete(:images) if event_params[:images] == [ "" ]

    if @event.update(cleaned_event_params)
      redirect_to @event, notice: "The event was updated."
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: "The event was deleted."
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:state, :name, :start_date, :content, images: [])
  end
end
