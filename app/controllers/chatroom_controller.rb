class ChatroomController < ApplicationController
  def show
    @users = User.all
    @room = Room.find(params[:id])
  end
end
