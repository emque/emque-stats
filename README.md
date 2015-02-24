# emque-stats

A library that provides any [Emque::Producing](https://github.com/teamsnap/emque-producing)
application instrumentation capabilities for collecting application statistics
and events. Stats and events are sent as just another Emque message through the
Message Broker (RabbitMQ).

A separate [Emque::Consuming](https://github.com/teamsnap/emque-consuming)
service must be created and deployed to process the data. In doing so, you can
use your preferred graphing or analytics solution, be it Graphite, StatsD,
New Relic, Keen.io, etc.


## Installation

Add this line to your application's Gemfile:

    gem 'emque-stats'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emque-stats

## Usage

Initialize emque-stats.

``` ruby
  Emque::Stats.configure do |config|
    config.app_name = "your_app"
    config.rabbitmq_options = { :url => "your rabbitmq url" }
  end
```

Send some stats

``` ruby
  # track activity
  Emque::Stats.event("login", {:user_id => 1, :another_property => "something"} )

  # counter
  Emque::Stats.increment("garets")
  Emque::Stats.count("garets", 20)

  # timing
  Emque::Stats.timer("glork", 320)

  # gauge
  Emque::Stats.gauge("bork", 100)
```

## Tests

To run tests...

```
bundle exec rspec
```

## Contributing

FIRST: Read our style guides at
https://github.com/teamsnap/guides/tree/master/ruby

1. Fork it ( http://github.com/teamsnap/emque-consuming/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
