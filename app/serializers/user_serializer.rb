class UserSerializer < ActiveModel::Serializer
  
  attributes :id, :user_name, :image_url, :is_artist, :spotify_link, :location, :bio

  has_many :events

  def events
    object.events.order(:show_time)
  end

end
