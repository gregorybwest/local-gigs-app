class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_name, :image_url, :is_artist, :spotify_link, :location, :bio

  has_many :events
end
