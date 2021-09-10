# frozen_string_literal: true

module PulseM
  class Client
    # module to fetch Reviews
    module Reviews
      def fetch_reviews(params = {})
        post('analytics/review', params)
      end

      def fetch_pulse_m_reviews(params = {})
        post('analytics/pulse_check', params)
      end
    end
  end
end
