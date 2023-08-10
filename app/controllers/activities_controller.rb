class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    wrap_parameters :activity, include: %i[hiking sight_seeing beach boat_safari water_sports park_tour cultural_tour city_tour kid_activities]

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
    
    # def activity_params
    #     params.permit(:hiking, :sight_seeing, :beach, :boat_safari, :water_sports, :park_tour, :cultural_tour, :city_tour, :kid_activities)
    # end
    def activity_params
        params.require(:activity).permit(
          :hiking, :sight_seeing, :beach, :boat_safari,
          :water_sports, :park_tour, :cultural_tour,
          :city_tour, :kid_activities
        )
      end
      
    def render_not_found_response
        render json: { error: "Activity not found" }, status: :not_found
    end
end
