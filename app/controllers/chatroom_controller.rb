class ChatroomController < ApplicationController
  def show
    if !current_user
      redirect_to root_path
    end

    @users = User.all
    @rooms = Room.all
    @room = Room.find(params[:id])
    @messages = Message.where(room_id: params[:id])
  end
end
