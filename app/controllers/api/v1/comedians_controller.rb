class Api::V1::ComediansController < ApplicationController
    # skip_before_action :authorized, only: [:create, :index]

    def index
        comedians = Comedian.all 
        render json: comedians
    end

    def show
        comedian = Comedian.find_by(id: params[:id])
        render json: comedian
    end
    
   
 
    def profile
        render json: { user: ComedianSerializer.new(current_user) }, status: :accepted
    end
    
    def create
        comedian = Comedian.create(comedian_params)
        # if @user.valid?
        #     @token = encode_token({ user_id: @user.id })
        #     render json: { user: ComedianSerializer.new(@user), jwt: @token }, status: :created
        # else
        #     render json: { error: 'failed to create user' }, status: :not_acceptable
        # end
        render json: comedian
    end

    def destroy
        comedian = Comedian.find_by(id: params[:id])
        comedian.destroy
        render json: {message: "comedian deleted"}
    end
    
    private
    
    def comedian_params
        params.require(:comedian).permit(:id, :name, :email, :password, :city, :personal_website, :headshot)
    end
end
