class  Api::V1::EventsController < ApplicationController
    def index
        events = Event.all 
        render json: events
    end

    def create
        event = Event.create(event_params)
        render json: event
    end

    def update
        event = Event.find_by(id: params[:id])
        event.update(event_params)
        event.save
        render json: event
    end

    def show
        event = Event.find_by(id: params[:id])
        render json: event
    end

    def destroy
        event = Event.find_by(id: params[:id])
        event.destroy
        render json: {message: "event deleted"}
    end
    private

    def event_params 
        params.require(:event).permit!
        # params.require(:event).permit(:id, :comedian_id, :date_time, :is_irl, :is_virtual, :venue, :address, :phone_number, :ticket_link, :venue_website, :ticket_price)
    end
end
