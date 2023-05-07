class UsersController < ApplicationController
  def index
    @room = Room.all
  end
end
