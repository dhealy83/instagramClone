class ApplicationController < ActionController::Base

    def current_user
        # Use find_by_id to get nil instead of an error if user doesn't exist
        # you can change the session param based on your params
       @current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id])
     end
end
