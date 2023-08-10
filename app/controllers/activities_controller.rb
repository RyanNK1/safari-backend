class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        activities = Activity.all
        render json: activities
    end

    def show
        activity = find_activity
        render json: activity
    end

    def create
        activity = Activity.create(activity_params)
        if activity.valid?
         render json: activity, status: :created
        else
         render json: { errors: activity.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    def update
        activity = find_activity
        if activity.update(activity_params)
          render json: activity
        else
          render json: { errors: activity.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    def destroy
        activity= find_activity
        activity.destroy
        head :no_content
    end

    private

    def find_activity
        Activity.find(params[:id])
    end
    
    def activity_params
        params.permit( :Hiking, :SightSeeing, :Beach, :BoatSafari, :WaterSports, :ParkTour, :CulturalTour, :CityTour, :KidActivities)
    end
    
    def render_not_found_response
        render json: { error: "Activity not found" }, status: :not_found
    end
end
