class UserEventsController < ApplicationController
    def index
        render json: UserEvent.all
    end

    def show
        @user_event = UserEvent.find(params[:id])
        render json: {user_event: @user_event}
    end

    def create
        @user_event = UserEvent.create(user_events_params)
        render json: @user_event
    end

    def destroy
        @user_event = UserEvent.find_by(event_id: user_events_params[:event_id], attendee_id: user_events_params[:attendee_id])
        @user_event.destroy
        render json: @user_event
    end

    private

    def user_events_params
        params.require(:user_event).permit(:event_id, :attendee_id, :attendee_name)
    end
end
