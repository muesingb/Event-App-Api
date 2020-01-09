class EventsController < ApplicationController

    def index
        render json: Event.all
    end

    def show
        @event = Event.find(params[:id])
        render json: {event: @event, creator: @event.creator, attendees: @event.attendees}
    end
end
