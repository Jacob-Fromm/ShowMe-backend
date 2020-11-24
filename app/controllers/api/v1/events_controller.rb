class  Api::V1::EventsController < ApplicationController
    def index
        events = Event.all 
        render json: events
    end

    def create
        event = Event.create(event_params)
        render json: event
    end

    private

    def event_params 
        params.permit(:id, :comedian_id, :date_time, :is_irl, :is_virtual, :venue, :address, :phone_number, :ticket_link, :venue_website, :ticket_price)
    end
end
