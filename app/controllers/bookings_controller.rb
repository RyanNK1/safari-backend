class BookingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
    def index
        booking=Booking.all
        render json: booking
    end
  
    def show
        booking=find_booking 
        render json: booking
    end
  
    def create
        booking=Booking.create(booking_params)
        render json: booking, status: :created
    end
    
    def update
        booking=find_booking
        booking.update(booking_params)
        render json: booking
      end
    
      
    
      def destroy
        booking=find_booking
        booking.destroy
        head :no_content
      end
  
      private
  
    def find_booking
        Booking.find(params[:id])
    end
    
    def booking_params
        params.permit(:package_id, :days_booked, :no_of_people)
    end
    
    def render_not_found_response
        render json: { error: "Booking not found" }, status: :not_found
    end
  end
  
