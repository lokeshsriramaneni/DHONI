class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user
  puts "Hello"
  def authenticate_user
     if session[:user_id].blank?
         redirect_to sign_in_users_path
     end
  end
end
