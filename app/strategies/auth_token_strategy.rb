class AuthTokenStrategy < Warden::Strategies::Base
  def authenticate!
    user = User.find_by(authentication_token: auth_token)

    if user
      success!(user)
    else
      fail!('Invalid email or password')
    end
  end

  private

  def auth_token
    env['HTTP_AUTHORIZATION'].to_s.remove('Bearer ')
  end
end
