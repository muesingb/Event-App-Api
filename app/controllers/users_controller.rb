class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        @user = User.find(params[:id])
        @sorted_and_filtered_events = @user.sort_and_filter_events
        @sorted_and_filtered_created_events = @user.created_events.sort_and_filter_events
        ##sort events by date
        ##filter events so past events aren't shown
        render json: {user: @user, events: @sorted_and_filtered_events, created_events: @sorted_and_filtered_created_events}
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :email, :image, :description)
    end
end
