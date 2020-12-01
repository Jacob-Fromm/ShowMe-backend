class Api::V1::ComedianFansController < ApplicationController

    def index
        comedian_fans = ComedianFan.all

        render json: comedian_fans
    end

    def create
        comedian_fan = ComedianFan.create(comedian_fan_params)
        render json: comedian_fan
    end

    def show
        comedian_fan = ComedianFan.find_by(id: params[:id])
        render json: comedian_fan
    end

    def destroy
        comedian_fan = ComedianFan.find_by(id: params[:id])
        comedian_fan.destroy
        render json: {message: "no longer subscribed"}
    end

    private

    def comedian_fan_params
        params.require(:comedian_fans).permit(:id, :comedian_id, :fan_id)
    end
end
