class VenuesController < ApplicationController
  def index
    response = HTTP.auth("Bearer #{Rails.application.credentials.yelp_api_key}").get("https://api.yelp.com/v3/businesses/search?location=#{params[:location]}&categories=#{params[:categories]}&term=#{params[:term]}")
    render json: response.parse(:json)["businesses"]
  end
end



