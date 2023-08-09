class PaymentsController < ApplicationController
    before_action :authenticate_user!, except: [:webhook]

    skip_before_action :verify_authenticity_token, only: [:webhook]

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
        
        Stripe.api_key = Rails.application.secrets.stripe_secret_key

        token = params[:token]
        amount = params[:amount]

        begin
        charge = Stripe::Charge.create(
            amount: amount,
            currency: 'usd', 
            source: token,
            description: 'Example payment'
        )

        # Handle the success response
        render json: { status: 'success', message: 'Payment successful!' }
        rescue Stripe::CardError => e
        # Handle card errors
        render json: { status: 'unprocessable_entity', message: 'Payment failed. Please try again later' }
        rescue Stripe::StripeError => e
        # Handle other Stripe-related errors
        render json: { status: 'unprocessable_entity', message: 'Payment failed. Please try again later' }
        end
    end
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
