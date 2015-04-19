class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  helper_method :current_user #this lets us view this in all windows

    private
    def current_user
      @current_user  ||= User.find(session[:user_id]) if session[:user_id]   #if current user has a value ,use that don't go to the db, if it is nill then go to the db to get the info

#we want to save trips going to the db,
    end


end