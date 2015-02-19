# statsk

A Ruby library to support a centralized data pipeline, producing operational
and user activity stats to [Kafka](http://kafka.apache.org/). Separate consumer
services can be developed to further process or directly report on the data for
alerts and charts, either to internal tools like statsd and Riemann, or services
like New Relic Insights and Librato Metrics.

## Installation

Add this line to your application's Gemfile:

    gem 'statsk'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install statsk

## Usage

Initialize statsk.

``` ruby
  Statsk.configure do |config|
    app_name = "your_app"
    seed_brokers = ["localhost:9092"]
  end
```

Send some stats

``` ruby
  # track activity
  Statsk.track("", :user_id => 1, :another_property => "something")

  # counter
  Statsk.increment("garets")

  # timing
  Statsk.timing("glork", 320)

  # gauge
  Statsk.gauge("bork", 100)
```

## Credits

## License
