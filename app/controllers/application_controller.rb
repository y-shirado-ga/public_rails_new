class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def authenticate_user!
    session[:user_return_to] = Rails.env['PATH_INFO']
    redirect_to user_omniauth_authorize_path(:facebook) unless user_signed_in?
  end
end
