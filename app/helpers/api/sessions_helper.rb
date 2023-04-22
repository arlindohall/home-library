module Api
  module SessionsHelper
    PASSWORD_HEADER = "x-home-library-password"

    def current_user
      return @current_user if @current_user
      return nil unless session[:session_token]
      @current_user = User.find_by(session_token: session[:session_token])
    end

    def login!
      unless @user.session_token
        @user.ensure_session_token
        @user.save!
      end

      session[:session_token] = @user.session_token
      @current_user = @user
      return @user.session_token
    end

    def logout!
      current_user&.reset_session_token!
      session[:session_token] = nil
    end
  end
end
