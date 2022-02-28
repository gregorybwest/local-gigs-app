# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(email: "gregorybwest@gmail.com", user_name: "Greg West", image_url: "https://i.scdn.co/image/ab67616d0000b2736c20bcbe87a1e02b83cd1a29", is_artist: true, spotify_link: "https://open.spotify.com/artist/5s1eWrdu2squzgtTjsJfnI?si=Aa-lfkZkQCidEZ5057cI9A", location: "Los Angeles", bio: "Greg West is a singer/songwriter and guitarist from Los Angeles, CA...", password: "password", password_confirmation: "password")
User.create(email: "beatles@gmail.com", user_name: "The Beatles", image_url: "https://cdn.britannica.com/18/136518-050-CD0E49C6/The-Beatles-Ringo-Starr-Paul-McCartney-George.jpg", is_artist: true, spotify_link: "https://open.spotify.com/artist/3WrFJ7ztbogyGnTHbHJFl2?si=sLpV2L-0SAOOCLlbb_Ve_g", location: "London", bio: "The fab four formed in Liverpool...", password: "password", password_confirmation: "password")
User.create(email: "goon@gmail.com", user_name: "Goon", image_url: "https://media.istockphoto.com/photos/black-cat-kitten-looking-at-the-camera-isolated-on-white-picture-id514332662?k=20&m=514332662&s=612x612&w=0&h=8vXn5EFbAWdl_pHVqBoF_cWMOMZQiE8S8aomiUZlPXI=", is_artist: false, location: "Los Angeles", bio: "Happy kitty and music fan.", password: "password", password_confirmation: "password")
User.create(email: "bagel@gmail.com", user_name: "Bagel", image_url: "https://icatcare.org/app/uploads/2018/06/Layer-1704-1200x630.jpg", is_artist: false, location: "Los Angeles", bio: "I like naps and live music.", password: "password", password_confirmation: "password")

Event.create(yelp_venue_id: "n_7J7R96fUHk7WP9CjKa7w", show_time: "2022-02-28T09:00:00-08:00", flier_image_url: "https://i.pinimg.com/originals/8f/07/f3/8f07f3ff34c330bc381f44e0e53c3749.jpg", user_id: 6)
Event.create(yelp_venue_id: "-5jlXpj4yQwh7fnCEVDvCA", show_time: "2022-03-04T09:30:00-08:00", flier_image_url: "https://i.etsystatic.com/19389619/r/il/80e90e/1799742553/il_1588xN.1799742553_mamq.jpg", user_id: 7)
Event.create(yelp_venue_id: "XeE5pU3tekwcDIWuqRNL7g", show_time: "2022-03-12T10:30:00-08:00", flier_image_url: "https://ztribe.com/wp-content/uploads/2014/12/cadillac-zack-presents-jimmy-z-and-the-ztribe-in-tarzana.png", user_id: 6)