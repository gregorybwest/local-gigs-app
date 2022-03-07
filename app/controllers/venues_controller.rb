class VenuesController < ApplicationController
  # hard code city for MVP, user only passes in venue name in search
  def index
    response = HTTP.auth("Bearer #{Rails.application.credentials.yelp_api_key}").get("https://api.yelp.com/v3/businesses/search?location=losangeles&categories=musicvenues,bars&term=#{params[:term]}")
    render json: response.parse(:json)["businesses"]
  end
end



