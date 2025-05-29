# frozen_string_literal: true

require 'faraday_middleware'
Dir[File.expand_path('../../../faraday/*.rb', __FILE__)].each { |f| require f }

module PulseM
  class HttpUtils
    # connection module
    module Connection
      private

      def connection
        options = {
          url: "https://#{endpoint}#{api_version}/"
        }

        Faraday::Connection.new(options) do |connection|
          connection.use FaradayMiddleware::PulseMAuth, api_key
          connection.use FaradayMiddleware::Location, location_id
          connection.use FaradayMiddleware::Mashify
          connection.use Faraday::Response::ParseJson
          connection.adapter(adapter)
        end
      end
    end
  end
end
