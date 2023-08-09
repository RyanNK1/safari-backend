class UsersController < ApplicationController
    before_action :set_user, only: %i[show update destroy]

    wrap_parameters :user, include: %i[first_name last_name phone email username bio avatar password password_confirmation]

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        users=User.all
        render json: users
    end

    def show
        render json: @user
    end

    def create
        @user = User.new(user_params)
 
        if @user.save
            token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), token: token }, status: :created
        else
            render json: {errors: @user.errors.full_messages }, status: :unprocessable_entity
     end
    end
    
    def update
        if @user.update(user_params)
            render json: UserSerializer.new(@user)
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    def destroy
        @user.destroy
        head :no_content
    end

    def login
        @user = User.find_by(username: login_params[:username])
    
        if @user&.authenticate(login_params[:password])
          token = encode_token({ user_id: @user.id })
          render json: { user: UserSerializer.new(@user) }, status: :accepted, token: token
        else
          render json: { message: 'Invalid username or password', status: 'error' }, status: :unauthorized
        end
      end

    def logout
        render json: { message: 'Logout successful' }, status: :ok
    end

    private

    def set_user
        @user.find(params[:id])
    end
    
    def user_params
        params.permit(:FirstName, :LastName, :Username, :DOB, :Email, :Password, :ConfirmPassword)
    end

    def login_params
        params.permit(:username, :password)
    end
    
    def render_not_found_response
        render json: { error: "User not found" }, status: :not_found
    end
end
