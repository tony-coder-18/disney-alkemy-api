class RegistrationsController < ApplicationController
  def create
    user = User.new(
      email: params['user']['email'],
      password: params['user']['password'],
      password_confirmation: params['user']['password'],
   )

    #user = User.new(user_params)

    if user.save
        session[:user_id] = user.id
        render json: {
            status: :created,
            user: user
        }
    else
        render json: {
            status: 500
        }
    end

#    private
#    def user_params
#      params.require(:user).permit(:name, :email, :password, :password_confirmation)
#   end
end
end
