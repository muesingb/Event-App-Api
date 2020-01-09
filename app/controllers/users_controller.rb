class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        @user = User.find(params[:id])
        render json: {user: @user, events: @user.events, created_events: @user.created_events}
        ##add method to model that sorts users events
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
