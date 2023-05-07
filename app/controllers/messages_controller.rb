class MessagesController < ApplicationController
  def create
    user = User.find(current_user.id)
    @message = user.messages.create!(content: msg_params[:content], room_id: params[:room_id])

    if @message.save
      redirect_to chatroom_path(@message.room), status: :see_other
    else
      render :new
    end
  end

  private
  def msg_params
    params.permit(:content)
  end
end
