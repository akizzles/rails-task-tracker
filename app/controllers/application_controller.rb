class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  # def logged_in?
  #   !!current_user
  # end

  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end

  # Methods you build in controllers do not permeate to your ActionView part of your code
  # So you can't call this in your html.erb unless you say explicitly.
  # So explicitly stating this is a helper method, please let me use it in my view...
  helper_method :current_user

end
