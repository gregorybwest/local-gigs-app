class Event < ApplicationRecord
  belongs_to :user
  validates_presence_of :yelp_venue_id, :show_time

  def yelp_venue
    Rails.cache.fetch([self, :yelp_venue_id], expires_in: 1.day) do
      response = HTTP.auth("Bearer #{Rails.application.credentials.yelp_api_key}").get("https://api.yelp.com/v3/businesses/#{yelp_venue_id}")

      venue = response.parse(:json)
      {
        id: venue["id"],
        name: venue["name"],
        location: venue["location"]["display_address"],
        coordinates: venue["coordinates"]
      }
    end
  end

  scope :has_not_happened, -> { where('show_time > ?', DateTime.now) }
end

