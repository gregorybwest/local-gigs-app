class EventsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]

  def index
    events = Event.all
    render json: events
  end

  def create
    event = Event.new(
      yelp_venue_id: params[:yelp_venue_id], 
      show_time: params[:show_time], 
      flier_image_url: params[:flier_image_url], 
      user_id: current_user.id
    )
    if event.save
      render json: event, status: :created
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
    if event.user_id != current_user.id
      return render json: {errors: event.errors.full_messages}, status: :unauthorized
    end
    if event.save
      render json: event
    else
      render json: {errors: event.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    if event.user_id != current_user.id
      return render json: {errors: event.errors.full_messages}, status: :unauthorized
    end
    event.destroy
    render json: {message: "Event successfully destroyed"}
  end

end
