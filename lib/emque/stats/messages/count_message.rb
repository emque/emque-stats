class CountMessage
  include Emque::Producing::Message

  topic "metrics"
  message_type "metrics.count"

  attribute :event_name, String, :required => true
  attribute :count, Integer, :required => true
end
