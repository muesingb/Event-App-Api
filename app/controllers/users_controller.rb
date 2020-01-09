class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        @user = User.find(params[:id])
        render json: {user: @user, events: @user.events, created_events: @user.created_events}
    end
end
