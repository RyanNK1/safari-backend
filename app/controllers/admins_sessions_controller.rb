class AdminsSessionsController < ApplicationController
    # Admins
    def create
      admin = Admin.find_by(adminname: params[:adminname])
      if admin&.authenticate(params[:password])
        cookies.signed[:admin_id] = { value: admin.id, httponly: true }
        render json: { message: "Admin logged in successfully" }, status: :ok
      else
        render json: { error: "Invalid admin name or password" }, status: :unauthorized
      end
    end
    
    def destroy
      clear_server_session_data
      clear_admin_cookie
      head :no_content
    end
    
    private
    
    def clear_server_session_data
      session[:key] = nil
    end
    
    def clear_admin_cookie
      admin_id = cookies.signed[:admin_id]
      cookies.delete(:admin_id)
    end
  end
  