# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'
require 'pulse_m/version'

require File.expand_path('../pulse_m/configuration', __FILE__)
require File.expand_path('../pulse_m/api', __FILE__)
require File.expand_path('../pulse_m/client', __FILE__)
require File.expand_path('../pulse_m/error', __FILE__)

module PulseM
  extend Configuration

  def self.client(options = {})
    PulseM::Client.new(options)
  end

  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)

    client.send(method, *args, &block)
  end
end
