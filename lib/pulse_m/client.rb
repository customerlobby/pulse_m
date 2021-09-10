# frozen_string_literal: true

module PulseM
  # Wrapper for the REST API.
  class Client < PulseM::API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each { |f| require f }

    include PulseM::Client::Reviews
  end
end
