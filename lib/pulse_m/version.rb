# frozen_string_literal: true

module PulseM
  class Version
    MAJOR = 0 unless defined? PulseM::Version::MAJOR
    MINOR = 1 unless defined? PulseM::Version::MINOR
    PATCH = 0 unless defined? PulseM::Version::PATCH

    class << self
      # @return [String]
      def to_s
        [MAJOR, MINOR, PATCH].compact.join('.')
      end
    end
  end
end
