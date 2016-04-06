class UserController < ApplicationController
  respond_to :json

  def show
    @user = User.find params[:id]
  end

  def index
    @users = User.all
  end
end
