class EventMessage
  include Emque::Producing::Message

  topic "metrics"
  message_type "metrics.event"

  attribute :event_name, String, :required => true
  #arbitrary properties
end
