# app/controllers/users_controller.rb
class Api::V1::UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  # POST /signup
  # create a user, raise record invalid exception incase userparams are invalid
  # return authenticated token upon signup

  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password
    )
  end
end
