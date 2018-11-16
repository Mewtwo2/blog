class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to root_path
    end
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in(@user)
      redirect_to root_path
      # redirect_to @user, these are going to be commented out unless I decide to implement user sign ups and logins
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
