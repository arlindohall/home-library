class User < ApplicationRecord
  has_secure_password

  before_save :ensure_session_token

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end
end
