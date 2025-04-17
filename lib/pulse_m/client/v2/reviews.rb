# frozen_string_literal: true

module PulseM
  class Client
    module V2
      # module to fetch Reviews
      module Reviews
        def fetch_pulse_check(params = {})
          get('analytics/pulse-check', params)
        end
      end
    end
  end
end
