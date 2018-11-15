class UsersController < ApplicationController

  def new
    if logged_in?
      redirect_to current_user
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    if current_user && current_user.is_admin
      @users = User.all
    else
      redirect_to root_path
    end
  end

  def subscribe
    # p params
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email,:password)
  end
end
