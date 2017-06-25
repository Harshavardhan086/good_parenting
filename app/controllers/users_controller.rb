class UsersController < ApplicationController
  before_action :authenticate_user!
  def create
  end

  def index
    @user = current_user

    logger.debug("user-controller- ")
    @minor_for_user = Minor.where(user_id: current_user.id)
  end
  
  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end



end
