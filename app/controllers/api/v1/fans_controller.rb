class Api::V1::FansController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    
    def index
        fans = Fan.all 

        render json: fans
    end
    
    def create
        @user = Fan.create(fan_params)
        if @user.valid?
            @token = encode_token({ user_id: @user.id })
            render json: { user: FanSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private

    def fan_params
        params.require(:fan).permit(:name, :email, :password)
    end

end
