class UsersController < ApplicationController
  def index
    @room = Room.all
  end

  def create
    user = User.find_or_create_by(name: params[:user][:name])

    if user
      session[:user] = user
      redirect_to chatroom_path(params[:room])
    end
  end
end
