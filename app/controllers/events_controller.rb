class EventsController < ApplicationController

    def index
        render json: Event.all
    end

    def show
        @event = Event.find(params[:id])
        render json: {event: @event, creator: @event.creator, attendees: @event.attendees}
    end

    def create
        puts event_params
        # @event = Event.create(event_params)
        #save time in format from native
        ##Time.at(time from react native).utc
        # render json: @event
    end

    private

    def event_params
        params.require(:event).permit(:creator_id, :image, :name, :location, :time,:co_host, :password)
    end
end
