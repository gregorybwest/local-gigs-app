class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :yelp_venue_id
      t.datetime :show_time
      t.string :flier_image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
