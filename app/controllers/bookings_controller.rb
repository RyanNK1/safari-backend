class BookingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        bookings = current_user.bookings.includes(:package)
        render json: bookings, each_serializer: BookingSerializer
    end

    def create
        package = Package.find(params[:package_id])
        booking = build_booking(package, booking_params)

        if booking.save
         render json: booking, status: :created
        else
         render json: { errors: booking.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        booking = find_booking
        render json: booking, serializer: BookingSerializer
    end

    def update
        booking = find_booking
        if booking.update(booking_params)
         render json: booking, serializer: BookingSerializer
        else
         render json: { errors: booking.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        booking = find_booking
        booking.destroy
        head :no_content
    end

    private

    def find_booking
        Booking.find(params[:id])
    end

    def build_booking(package, params)
        package.bookings.build(params).tap do |booking|
          booking.user = current_user
        end
    end
    
    def booking_params
        params.permit(:package_id, :DaysBooked, :NumberOfPeople)
    end
    
    def render_not_found_response
        render json: { error: "Booking not found" }, status: :not_found
    end
end
