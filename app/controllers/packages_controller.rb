class PackagesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        package=Package.all
        render json: package, status: :ok
    end

    def show
        package = find_package
        render json: package
    end

    def create
        package = Package.create(package_params)
        render json: package, status: :created
    end
    
    def update
        package = find_package
        package.update(package_params)
        render json: package
      end
    
      
    
      def destroy
        package = find_package
        package.destroy
        head :no_content
      end

      private

    def find_package
        Package.find(params[:id])
    end
    
    def package_params
        params.permit(:package_name, :recommended_hotel, :location, :image, :price_per_day, :description, :maximum_no_of_people)
    end
    
    def render_not_found_response
        render json: { error: "Package not found" }, status: :not_found
    end
end
