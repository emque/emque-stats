require "emque/stats/version"
require "emque/stats/configuration"
require "emque/stats/client"

module Emque
  module Stats
    class << self
      attr_accessor :client
      attr_writer :configuration

      def logger
        self.configuration.logger
      end

      def configure
        yield(configuration)
        self.client = Client.new(configuration)
      end

      def configuration
        @configuration ||= Configuration.new
      end

      def event(event_name, props = {})
        Emque::Stats.client.produce_track(event_name, props)
      end

      def increment(event_name)
        count(event_name, 1)
      end

      def count(event_name, count=1)
        Emque::Stats.client.produce_count(event_name, count=1)
      end

      def timing(event_name, timing)
        Emque::Stats.client.produce_timing(event_name, timing)
      end

      def gauge(event_name, value)
        Emque::Stats.client.produce_gauge(event_name, value)
      end
    end
  end
end
