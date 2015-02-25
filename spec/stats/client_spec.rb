require "spec_helper"

describe Emque::Stats::Client do
  let(:config) {
    config = Emque::Stats::Configuration.new
    config.publish_messages = false
    config
  }
  subject { Emque::Stats::Client.new(config) }

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
