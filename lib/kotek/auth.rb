require "kotek/auth/version"

module Kotek
  module Auth
    class Error < StandardError; end

    def token(user_id)
      payload = { user_id: user_id }
      JWT.encode(payload, hmac_secret, 'HS256')
    end

    def hmac_secret
      ENV["API_SECRET_KEY"]
    end

    def current_user
      begin
        token = request.headers["Authorization"]
        decoded_array = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256' })
        payload = decoded_array.first
        User.find(payload["user_id"])
      rescue
        return nil
      end
    end
  end
end
