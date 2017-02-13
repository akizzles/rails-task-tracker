class SessionsController < ApplicationController
  def new # login page in views/sessions/new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user), message: "Welcome to Task Tracker. Please log in!"
    else
      render 'sessions/new'
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end

end
