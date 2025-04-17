# frozen_string_literal: true

module PulseM
  class HttpUtils
    module Response
      def self.create(response_hash)
        if response_hash[:status] == 0
          raise PulseM::AuthorizationError.new('Invalid API key provided') if response_hash[:message].include?('Unauthorized')
          raise PulseM::BadRequestError.new(response_hash[:message])
        end

        data = response_hash rescue response_hash
        data.extend(self)
        data
      end
    end
  end
end
