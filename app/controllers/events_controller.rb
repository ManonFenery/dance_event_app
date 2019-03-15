class EventsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(title: params[:title], description: params[:description], start_date: params[:start_date], location_name: params[:location_name], location_address: params[:location_address], location_city: params[:location_city], location_zipcode: params[:location_zipcode], location_country: params[:location_country], price: params[:price], styles: params[:styles], category: params[:category], class_level: params[:class_level], class_teacher: params[:class_teacher])
    @event.admin = current_user

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def index
    @events = Event.all.sort
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
    params.require(:event).permit(:title, :description, :start_date, :location_name, :location_address, :location_city, :location_zipcode, :location_country, :price, :styles, :category, :class_level, :class_teacher)
  end
end






