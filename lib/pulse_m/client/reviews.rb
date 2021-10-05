# frozen_string_literal: true

module PulseM
  class Client
    # module to fetch Reviews
    module Reviews
      def fetch_reviews(params = {})
        post('analytics/review', merge_default_params(params))
      end

      def fetch_pulse_m_reviews(params = {})
        post('analytics/pulse_check', merge_default_params(params))
      end

      private

      def merge_default_params(params)
        params.merge!({ action: "list" }) unless params.key?(:action)
        params
      end
    end
  end
end
