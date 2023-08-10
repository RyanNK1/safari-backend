class AdminsController < ApplicationController
        rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
        def index
            admin=Admin.all
            render json: admin
        end
    
        def show
            admin = find_admin
            render json: admin
        end
    
        def create
            admin = Admin.create(admin_params)
            render json: admin, status: :created
        end
        
        def update
            admin = find_admin
            admin.update(admin_params)
            render json: admin
          end
        
          
        
          def destroy
            admin= find_admin
            admin.destroy
            head :no_content
          end
    
          private
    
        def find_admin
            Admin.find(params[:id])
        end
        
        def admin_params
            params.permit(:admin_name, :email, :password,)
        end
        
        def render_not_found_response
            render json: { error: "Admin not found" }, status: :not_found
        end
end
