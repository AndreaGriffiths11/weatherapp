Require 'barometer'

def get_location(location)
  Barometer.new(location).measure
end

weather = get_locations_weather('Chicago')

weather.forecast.each do |forecast|
 puts forecast.starts_at.month.to_s + '/' + forecast.starts_at.day.to_s + ' is going to be ' + forecast.icon + ' with a low of ' + forecast.low.f.to_s + ' and a high of ' + forecast.high.f.to_s
end
