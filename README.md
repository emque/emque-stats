# emque-stats

A Ruby library to support a centralized data pipeline, producing operational
and user activity stats via Emque/RabbitMQ. Separate consumer services can be
developed to further process or directly report on the data for alerts and
charts, either to internal tools like statsd, graphite and Riemann, or services
like New Relic Insights and Librato Metrics.

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
    app_name = "your_app"
  end
```

Send some stats

``` ruby
  # track activity
  Emque::Stats.event("login", :user_id => 1, :another_property => "something")

  # counter
  Emque::Stats.increment("garets")

  # timing
  Emque::Stats.timing("glork", 320)

  # gauge
  Emque::Stats.gauge("bork", 100)
```

## Credits

## License
