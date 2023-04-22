module Api
  class SessionsController < ApplicationController
    include SessionsHelper
    def login
      @user =
        User.for(
          email: params[:email],
          password: request.headers[PASSWORD_HEADER]
        )

      if @user
        login!
        render json: { success: true }
      else
        render json: { error: "Invalid email or password" }
      end
    end

    def logout
      if current_user
        logout!
        render json: { success: true }
      else
        render json: { error: "Not logged in" }
      end
    end

    def get_current_user
      if current_user
        render json: { user: { email: current_user.email } }
      else
        render json: { error: "Not logged in" }
      end
    end
  end
end
