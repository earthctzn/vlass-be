class ApplicationController < ActionController::API
    include ActionController::Cookies
    include ActionController::RequestForgeryProtection
 
    protect_from_forgery with: :exception

    def logged_in?
        current_user
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

end
