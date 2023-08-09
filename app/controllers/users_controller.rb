class UsersController < ApplicationController
    before_action :set_user, only: %i[show update destroy]

    wrap_parameters :user, include: %i[first_name last_name phone email username bio avatar password password_confirmation]

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        user=User.all
        render json: user
    end

    def show
        user = find_user
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user, status: :created
    end
    
    def update
        user = find_user
        user.update(user_params)
        render json: user
      end
    
      
    
      def destroy
        user= find_user
        user.destroy
        head :no_content
      end

      private

    def find_user
        User.find(params[:id])
    end
    
    def user_params
        params.permit(:FirstName, :LastName, :Username, :DOB, :Email, :Password, :ConfirmPassword)
    end
    
    def render_not_found_response
        render json: { error: "User not found" }, status: :not_found
    end
end
