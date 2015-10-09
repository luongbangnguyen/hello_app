class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionHelper
  def hello
    render text: "¡Hola, mundo!"
  end
  def goodbye
    render text: "goodbye, world!"
  end
  
  def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Pelease log in"
        redirect_to login_url
      end
  end
end
