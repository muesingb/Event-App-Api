class EventsController < ApplicationController

    def index
        @sorted_events = Event.sort_and_filter_events
        render json: @sorted_events
    end

    def show
        @event = Event.find(params[:id])
        render json: {event: @event, creator: @event.creator, attendees: @event.attendees}
    end

    def create
        @event = Event.create(event_params)
        if(@event.valid?) 
            render json: @event
        else
            render json: {message: 'could not create Event'}
        end
        #saves time in format from native
    end

    private

    def event_params
        params.require(:event).permit(:creator_id, :image, :name, :location, :time,:co_host, :password, :start_time, :end_time)
    end
end
