class TimerMessage
  include Emque::Producing::Message

  topic "metrics"
  message_type "metrics.timer"

  attribute :event_name, String, :required => true
  attribute :duration, Integer, :required => true
end
