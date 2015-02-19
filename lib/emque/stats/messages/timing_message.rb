class TimingMessage
  include Emque::Messages::Base

  topic "metrics"
  message_type "metrics.timing"

  attribute :event_name, String, :required => true
  attribute :timing, Integer, :required => true
end
