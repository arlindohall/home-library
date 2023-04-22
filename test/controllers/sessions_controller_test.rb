require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  attr_reader :email, :password, :user
  setup do
    @email = "miller@example.com"
    @password = "password"
    @user = users(:miller)
  end

  test "login saves a new session token" do
    get "/api/login?email=#{email}",
        headers: {
          Api::SessionsHelper::PASSWORD_HEADER => password
        }

    json = JSON.parse(response.body)

    assert json["success"]
    assert_predicate json["error"], :blank?

    assert_not_nil user.reload.session_token
    assert_equal user.session_token, session[:session_token]
  end

  test "returns current user email" do
    alice = users(:alice)

    get "/api/login?email=#{alice.email}",
        headers: {
          Api::SessionsHelper::PASSWORD_HEADER => "wonderland"
        }
    get "/api/current_user"

    email = JSON.parse(response.body).dig("user", "email")

    assert_equal alice.email, email
  end
end
