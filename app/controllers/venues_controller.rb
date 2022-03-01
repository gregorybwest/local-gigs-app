class VenuesController < ApplicationController
  def index
    response = HTTP.auth("Bearer mBOPCgvmiz4jG8asK78Bxd3j6ILeEZ-w75j7aqPd38GHgsz9GUeLivrysUhcUHgsz0NVzrnSsjGQDlHd8xp-urPWt3qSXHuAEOeEcbvaRT2rbyWSbWYw4ko8dJkGYnYx").get("https://api.yelp.com/v3/businesses/search?location=#{params[:location]}&categories=#{params[:categories]}&term=#{params[:term]}")
    render json: JSON.parse(response.body)
  end
end
