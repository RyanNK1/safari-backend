class PaymentsController < ApplicationController
    before_action :authenticate_user!, except: [:webhook]

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        payment=Payment.all
        render json: payment
    end

    def show
        payment= find_payment
        render json: payment
    end

    def create
        payment= Payment.create(payment_params)
        render json: payment, status: :created
    end
    
    def update
        payment= find_payment
        payment.update(payment_params)
        render json: payment
      end
    
      
    
      def destroy
        payment= find_payment
        payment.destroy
        head :no_content
      end

      private

    def find_payment
        Payment.find(params[:id])
    end
    
    def payment_params
        params.permit(:package_id, :booking_id, :action_id, :CardNumber, :ExpirationDate, :CVC, :DatePaid, :PricePerDay, :NumberOfPeople, :TotalAmountPerDay, :DaysBooked, :TotalAmount)
    end
    
    def render_not_found_response
        render json: { error: "Payment not found" }, status: :not_found
    end
end
