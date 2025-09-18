class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  skip_before_action :verify_authenticity_token
  # before_action :check_login

  

  protected

  def action1
    Rails.logger.info("-------------ACTION 1-----------------")
  end

  def check_login
    logged_in = session[:user].nil? ? false : true
    redirect_to login_path unless logged_in
  end

end
