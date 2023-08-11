class UsersNotificationsController < ApplicationController
    before_action :set_user_notification, only: [:show, :update, :destroy]
  
    def index
      @user_notifications = current_user.user_notifications.order(created_at: :desc)
      render json: @user_notifications
    end
  
    def create
      @user_notification = UserNotification.new(user_notification_params)
      if @user_notification.save
        render json: @user_notification, status: :created
      else
        render json: { errors: @user_notification.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def show
      render json: @user_notification
    end
  
    def update
      if @user_notification.update(user_notification_params)
        render json: @user_notification
      else
        render json: { errors: @user_notification.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @user_notification.destroy
      head :no_content
    end
  
    def count
      @user_notification_count = current_user.user_notifications.where(read: false).count
      render json: { count: @user_notification_count }
    end
  
    private
  
    def set_user_notification
      @user_notification = UserNotification.find(params[:id])
    end
  
    def user_notification_params
      params.require(:user_notification).permit(:message, :read, :user_id, :organizer_id, :event_id)
    end
  end
  