class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :user_name
      t.string :image_url
      t.boolean :is_artist
      t.string :spotify_link
      t.string :location
      t.text :bio

      t.timestamps
    end
  end
end
