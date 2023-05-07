class UsersController < ApplicationController
  def index
    if current_user
      redirect_to chatroom_path(1)
    end
    @room = Room.all
  end
end
