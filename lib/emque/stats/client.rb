require "emque-producing"
require "emque/stats/messages/count_message"
require "emque/stats/messages/gauge_message"
require "emque/stats/messages/timer_message"
require "emque/stats/messages/event_message"

module Emque
  module Stats
    class Client
      def initialize(config)
        Emque::Producing.configure do |c|
          c.app_name = config.app_name
          c.publishing_adapter = :rabbitmq
          c.rabbitmq_options = config.rabbitmq_options
        end
      end

      def produce_event(event_name, properties = {})
        message = EventMessage.new(:event_name => event_name, :properties => properties)
        message.publish
      end

      def produce_count(event_name, count=1)
        message = CountMessage.new(:event_name => event_name, :count => count)
        message.publish
      end

      def produce_timer(event_name, duration)
        message = TimerMessage.new(:event_name => event_name, :duration => duration)
        message.publish
      end

      def produce_gauge(event_name, value)
        message = GaugeMessage.new(:event_name => event_name, :value => value)
        message.publish
      end
    end
  end
end
