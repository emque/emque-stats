class EventMessage
  include Emque::Producing::Message

  topic "metrics"
  message_type "metrics.event"
  raise_on_failure false

  attribute :event_name, String, :required => true
  attribute :properties, Hash
end
