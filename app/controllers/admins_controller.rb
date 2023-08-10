class AdminsController < ApplicationController
    before_action :require_login
    
    def index
        admins = Admin.all.with_attached_images
        render json: admins, each_serializer: AdminSerializer
    end

    def show
        admin = find_admin
        render json: admin, serializer: AdminSerializer
    end

    def create
        admin = build_admin
        if admin.save
        render json: admin, status: :created
        else
        render_unprocessable_entity(admin)
        end
    end

    def update
        admin = find_admin
        if update_admin(admin)
        render json: admin
        else
        render_unprocessable_entity(admin)
        end
    end

    def show_meadmin
        if current_admin
        render json: current_admin
        else
        render_unauthorized("Not authorized")
        end
    end

    private

    def find_admin
        Admin.find(params[:id])
    end

    def build_admin
        admin = Admin.new(admin_params)
        admin.event_id = params[:event_id]
        admin.images.attach(params[:images])
        admin
    end

    def update_admin(admin)
        if admin.update(admin_params)
        admin.images.purge
        admin.images.attach(params[:images]) if params[:images].present?
        true
        else
        false
        end
    end

    def admin_params
        params.permit(:adminname, :description, :location, :images, :admin_id)
    end

    def render_unprocessable_entity(model)
        render json: { errors: model.errors.full_messages }, status: :unprocessable_entity
    end

    def render_unauthorized(message)
        render json: { error: message }, status: :unauthorized
    end
end
