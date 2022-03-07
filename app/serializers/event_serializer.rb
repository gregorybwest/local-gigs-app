class EventSerializer < ActiveModel::Serializer
  attributes :id, :show_time, :flier_image_url, :yelp_venue

  attribute :owner, if: :current_user

  def owner
    current_user.id == object.user_id
  end

  belongs_to :user
end
