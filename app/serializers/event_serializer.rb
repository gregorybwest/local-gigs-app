class EventSerializer < ActiveModel::Serializer
  attributes :id, :yelp_venue_id, :show_time, :flier_image_url, :user_id
end
