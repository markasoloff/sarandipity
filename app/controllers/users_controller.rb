class Api::UsersController < ApplicationController  




  def create
    user = User.new(
      email: params[:email],
      encrypted_password: params[:encrypted_password],
      confirmation_token: params[:confirmation_token],
      remember_token: params[:remember_token]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end