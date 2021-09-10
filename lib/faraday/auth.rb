# frozen_string_literal: true

module FaradayMiddleware
  class PulseMAuth < Faraday::Middleware
    def initialize(app, api_key)
      @app = app
      @api_key = api_key
    end

    def call(env)
      env[:request_headers].merge!('X-API-KEY' => @api_key)
      @app.call env
    end
  end
end
