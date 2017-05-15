class SessionsController < ApplicationController
  def new # login page in views/sessions/new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_back_or user
      flash[:success] = 'Welcome to Task Tracker! You are now logged in.'
      #redirect_to root_path 
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end

end
