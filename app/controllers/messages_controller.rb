class MessagesController < ApplicationController
  def create
    user = User.find(current_user.id)
    @message = user.messages.create!(content: params[:content], room_id: params[:room_id])
    # ActionCable.server.broadcast "chatroom_channel", message: render_message(@message)
  end

  private
  def render_message(message)
    ApplicationController.renderer.render(partial: "messages/message", locals: { message: message })
  end

end
