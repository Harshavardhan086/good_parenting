class UsersController < ApplicationController
  before_action :authenticate_user!
  def create
  end

  def index
    @user = current_user
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
