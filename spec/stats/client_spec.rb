require "spec_helper"

describe Emque::Stats::Client do
  subject {
    client = Emque::Stats::Client.new(Emque::Stats::Configuration.new)
    client.publish_messages = false
    client
  }

  it "produces event" do
    subject.produce_event("signin")
  end

  it "produces count" do
    subject.produce_count("signin")
  end

  it "produces timers" do
    subject.produce_timer("timer", 10)
  end

  it "produces gauge" do
    subject.produce_gauge("gauge", 10)
  end
end
