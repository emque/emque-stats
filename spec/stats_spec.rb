describe Emque::Stats do
  describe "#configure" do
    before do
      Emque::Stats.configure do |config|
        emque_configuration = Emque::Producing::Configuration.new
        emque_configuration.app_name = "emque_stats"
        config.emque_producing_configuration = emque_configuration
      end
    end

    it "has a configuration" do
      expect(
        Emque::Stats.configuration.emque_producing_configuration.app_name
      ).to eq "emque_stats"
    end
  end
end
