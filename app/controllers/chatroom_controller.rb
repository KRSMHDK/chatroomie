class ChatroomController < ApplicationController
  def show
    @users = User.all
    @room = Room.find(params[:id])
    @messages = Message.where(room_id: params[:id])
  end
end
