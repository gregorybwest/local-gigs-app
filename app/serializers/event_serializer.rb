class EventSerializer < ActiveModel::Serializer
  attributes :id, :show_time, :flier_image_url, :yelp_venue, :readable_date

  attribute :owner, if: :current_user

  def readable_date
    object.show_time.to_fs(:long_ordinal)
  end



  def owner
    current_user.id == object.user_id
  end
  
  

  belongs_to :user
end
