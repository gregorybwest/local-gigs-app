class EventSerializer < ActiveModel::Serializer
  attributes :id, :show_time, :flier_image_url, :yelp_venue

  belongs_to :user
end
