class EventsController < ApplicationController

  # before_action :authenticate_user, except: [:index, :show]

  def index
    events = Event.all
    render json: events
  end

  def create
    event = Event.new(
      yelp_venue_id: params[:yelp_venue_id], 
      show_time: params[:show_time], 
      flier_image_url: params[:flier_image_url], 
      user_id: params[:user_id] 
    )
    if event.save
      render json: { message: "Event created successfully"}, status: :created
    else
      render json: { errors: event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    event = Event.find(params[:id])
    render json: event
  end

  def update
    event = Event.find(params[:id])
    event.yelp_venue_id = params[:yelp_venue_id] || event.yelp_venue_id
    event.show_time = params[:show_time] || event.show_time
    event.flier_image_url = params[:flier_image_url] || event.flier_image_url
    event.user_id = params[:event_id] || event.user_id
    if event.save
      render json: event
    else
      render json: {errors: event.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    render json: {message: "Event successfully destroyed"}
  end



end
