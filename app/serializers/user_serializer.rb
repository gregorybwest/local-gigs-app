class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :user_name, :image_url, :is_artist, :spotify_link, :location, :bio
end
