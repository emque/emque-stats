class MeterMessage
  include Emque::Producing::Message

  topic "metrics"
  message_type "metrics.meter"
  raise_on_failure false

  attribute :event_name, String, :required => true
end
