class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      user_name: params[:user_name],
      image_url: params[:image_url],
      is_artist: params[:is_artist],
      spotify_link: params[:spotify_link],
      location: params[:location],
      bio: params[:bio]
    )
    if user.save
      render json: { message: "User created successfully"}, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.email = params[:email] || user.email
    user.password_digest = params[:password_digest] || user.password_digest
    user.user_name = params[:user_name] || user.user_name
    user.image_url = params[:image_url] || user.image_url
    user.is_artist = params[:is_artist] || user.is_artist
    user.spotify_link = params[:spotify_link] || user.spotify_link
    user.location = params[:location] || user.location
    user.bio = params[:bio] || user.bio
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "User successfully destroyed"}
  end

end
