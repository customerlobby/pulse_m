# frozen_string_literal: true

module FaradayMiddleware
  class Location < Faraday::Middleware
    def initialize(app, id)
      @app = app
      @id = id
    end

    def call(env)
      env[:request_headers].merge!('Location-Id' => @id)
      @app.call env
    end
  end
end
