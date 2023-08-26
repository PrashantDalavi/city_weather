class ApplicationController < ActionController::Base

  before_action :current_user

  def current_user
    unless session[:current_user].present?
      redirect_to sign_in_path
    end 
  end
end
