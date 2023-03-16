require "kotek/auth/version"

module Kotek
  module Auth
    class Error < StandardError; end
    def hello
      p 'hello'
      p defined?(JWT)
    end
  end
end
