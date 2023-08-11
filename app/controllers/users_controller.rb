# class UsersController < ApplicationController
#     before_action :require_login

#     def index
#         users = User.all
#         render json: users
#     end

#     def show_me
#         user = current_user

#         if user
#           render json: user
#         else
#           render json: { error: 'Not authorized' }, status: :unauthorized 
#         end        
#     end

#     def create
#         user = User.create(user_params)

#         if user.valid?
#           render json: user, status: :created
#         else
#           render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
#         end
#     end
    
#     def homepage
#         user = current_user
#         if user
#           render json: { message: 'Welcome to the user homepage!' }
#         else
#           render json: { error: 'Not authorized' }, status: :unauthorized
#         end
#     end
    
#     private
    
#     def user_params
#         params.permit(:first_name, :last_name, :username, :dob, :email, :password, :confirm_password)
#     end

#     def login_params
#         params.permit(:username, :password)
#     end
    
#     def render_not_found_response
#         render json: { error: "User not found" }, status: :not_found
#     end
# end
class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
      user=User.all
      render json: user
  end

  def show
      user=find_user
      render json: user
  end

  def create
      user=User.create(user_params)
      render json: user, status: :created
  end
  
  def update
      user=find_user
      user.update(user_params)
      render json: user
    end

    def destroy
      user=find_user
      user.destroy
      head :no_content
    end

    private

  def find_user
      User.find(params[:id])
  end
  
  def user_params
      params.permit(:first_name, :last_name, :username, :dob, :email, :password, :confirm_password)
  end
  
  def render_not_found_response
      render json: { error: "User not found" }, status: :not_found
  end
end

