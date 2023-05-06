class MessagesController < ApplicationController
  def create
    user = User.find(session[:user]['id'])
    @message = user.messages.create!(content: params[:content], room_id: params[:room_id])
  end
end
