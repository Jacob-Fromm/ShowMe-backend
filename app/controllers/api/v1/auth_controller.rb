class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create_comedian]
 
  def create_comedian
    @user = Comedian.find_by(email: comedian_login_params[:email])
    #User#authenticate comes from BCrypt
    if @user && @user.authenticate(comedian_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: @user.id })
      render json: { user: ComedianSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end

  def create_fan
    @user = Fan.find_by(email: fan_login_params[:email])
    #User#authenticate comes from BCrypt
    if @user && @user.authenticate(fan_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: @user.id })
      render json: { user: FanSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end
  
  def create_producer
    @user = Producer.find_by(email: producer_login_params[:email])
    #User#authenticate comes from BCrypt
    if @user && @user.authenticate(producer_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: @user.id })
      render json: { user: ProducerSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end
 
  private
 
  def comedian_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:comedian).permit(:name, :email, :password)
  end

  def fan_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:fan).permit(:name, :email, :password)
  end

  def producer_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:producer).permit(:name, :email, :password)
  end
end