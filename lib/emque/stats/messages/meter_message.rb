class MeterMessage
  include Emque::Producing::Message

  topic "metrics"
  message_type "metrics.meter"

  attribute :event_name, String, :required => true
end
