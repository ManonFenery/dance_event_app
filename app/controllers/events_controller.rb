class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.create(title: params[:title], description: params[:description], start_date: params[:start_date], location: params[:location], duration: params[:duration], price: params[:price], style: params[:style], category: params[:category])
    @event.admin = current_user

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event
    else
      render :update
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])

    if @event.destroy
      redirect_to events_path
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :location, :duration, :price, :style, :category)
  end
end
