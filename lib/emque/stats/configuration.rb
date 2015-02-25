module Emque
  module Stats
    class Configuration
      attr_accessor :app_name
      attr_accessor :logger
      attr_accessor :publish_messages
      attr_accessor :rabbitmq_options

      def initialize
        @app_name = ""
        @rabbitmq_options = {}
        @publish_messages = true
      end
    end
  end
end
