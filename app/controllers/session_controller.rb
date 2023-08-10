class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
      
    if user&.authenticate(params[:password])
      create_user_session(user)
      render_success("User logged in successfully")
    else
      render_unauthorized("Invalid username or password")
    end
  end
    
  def destroy
    clear_server_session_data
    clear_user_cookie
    head :no_content    
  end
    
  private

  def create_user_session(user)
    cookies.signed[:user_id] = { value: user.id, httponly: true }
  end

  def clear_server_session_data
    session[:key] = nil 
  end
    
  def clear_user_cookie
    user_id = cookies.signed[:user_id]
    cookies.delete(:user_id)
  end

  def render_success(message)
    render json: { message: message }, status: :ok
  end 

  def render_unauthorized(message)
    render json: { error: message }, status: :unauthorized
  end
end