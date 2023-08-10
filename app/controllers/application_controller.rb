class ApplicationController < ActionController::API
    include ActionController::Cookies
    
    # Retrieves the currently logged in admin, if any.
    def admins
        @admins ||= Admin.find_by(id: cookies.signed[:admin_id]) if cookies.signed[:admin_id].present?
    end

    # Retrieves the currently logged in user, if any.
    def current_user
        @current_user ||= User.find_by(id: cookies.signed[:user_id]) if cookies.signed[:user_id].present?
    end

   # Checks if a user or an organizer is currently logged in.
    def logged_in?
        current_user.present? || admins.present?
    end
    
    # Ensures that the user or organizer is logged in before accessing certain actions.
    def require_login
        unless logged_in?
         render json: { error: "You must be logged in to access this page." }, status: :unauthorized
        end
    end
end
