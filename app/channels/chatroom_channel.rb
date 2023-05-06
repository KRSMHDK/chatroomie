class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom_channel"
  end

  def create(opts)
    message = Message.create(content: opts.fetch('message'), user: current_user)
    if message.persisted?
      ActionCable.server.broadcast "chatroom_channel", { message: render_message(message) }
    end
  end

  private

  def render_message(message)
    ApplicationController.renderer.render(partial: "messages/message", locals: { message: message })
  end
end
