class User < ApplicationRecord
  has_secure_password

  before_save :ensure_session_token

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  class << self
    def for(email:, password:)
      user = User.find_by(email: email)
      return nil unless user
      return user if user.authenticate(password)
      nil
    end
  end
end
