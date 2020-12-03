class Api::V1::FansController < ApplicationController
    # skip_before_action :authorized, only: [:create, :index]
    
    def index
        fans = Fan.all 

        render json: fans, include: [:comedians => {include: :events}]
    end

    def show
        fan = Fan.find_by(id: params[:id])
        render json: fan
    end
    
    def create
        fan = Fan.create(fan_params)
        render json: fan
        # if @user.valid?
        #     @token = encode_token({ user_id: @user.id })
        #     render json: { user: FanSerializer.new(@user), jwt: @token }, status: :created
        # else
        #     render json: { error: 'failed to create user' }, status: :not_acceptable
        # end
    end

    def destroy
        fan = Fan.find_by(id: params[:id])
        fan.destroy
        render json: {message: "fan deleted"}
    end

    private

    def fan_params
        params.require(:fan).permit(:id, :name, :email, :password, :city)
    end

end
