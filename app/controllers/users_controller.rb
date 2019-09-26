class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
  end
  
  def create
    @user = User.new(name: params[:name], email: params[:email])
    @user.save
    redirect_to user_url @user
  end
  
  def show
    @user = User.find(params[:id])
  end
end
