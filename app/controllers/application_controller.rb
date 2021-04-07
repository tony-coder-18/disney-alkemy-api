class ApplicationController < ActionController::Base
  #skip_before_action :verify_authenticity_token
  protect_from_forgery with: :null_session
  include CurrentUserConcern

   def authorize
      user = User.find_by(email: params["user"]["email"]).try(:authenticate, params["user"]["password"])

      render json: {message: "You need to sign up"} unless user

   end

end
