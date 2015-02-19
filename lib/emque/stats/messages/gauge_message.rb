class GaugeMessage
  include Emque::Messages::Base

  topic "metrics"
  message_type "metrics.gauge"

  attribute :event_name, String, :required => true
  attribute :value, Integer, :required => true
end
