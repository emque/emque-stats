module Emque
  module Stats
    class Configuration
      attr_accessor :app_name
      attr_accessor :logger

      def initialize
        @app_name = ""
      end
    end
  end
end
