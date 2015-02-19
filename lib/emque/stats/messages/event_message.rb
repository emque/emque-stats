class EventMessage
  include Emque::Messages::Base

  topic "metrics"
  message_type "metrics.event"

  attribute :event_name, String, :required => true
  attribute :count, Integer, :required => true
  #arbitrary properties
end
