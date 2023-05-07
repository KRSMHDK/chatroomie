class SessionsController < ApplicationController
  def new
  end

  def create
    user =  User.find_or_create_by(name: params[:name])

    if user
      log_in(user, params[:room])
    else
      redirect_to root_path
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
