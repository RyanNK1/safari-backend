class ApplicationController < ActionController::API
    include ActionController::Cookies
    protect_from_forgery with: :exception    

    before_action :authenticate_user

    # Include the Stripe configuration
    require 'stripe'
    Stripe.api_key = 'sk_test_51NaYCPKKk5JD00V8GrPmR6uI8fhwZkdXvgGkF6kYaHcSOTA0g1dyoWhpFmkV2qBAH2CPDl8KiXYZfSqHRwiKEiQ3008ecRaBMs'


    private

    # This method is used to authenticate the user based on the user_id stored in the session or token.
    def authenticate_user
        unless !logged_in?
            render json: { message: 'Unauthorized request', status: 'error' }, status: :unauthorized unless logged_in?
        end
    end

    # This method is used to get the currently logged-in user based on the user_id stored in the session or token.
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if logged_in?
    end

    # This method checks if a user is logged in by using the current_user method.
    def logged_in?
        !!session[:user_id]
    end

    # This method sets the current user in the session or token after successful authentication.
    def log_in_user(user)
        session[:user_id] = user.id
    end

    # This method logs out the current user by removing the user_id from the session or token.
    def log_out_user
        session.delete(:user_id)
    end
end
