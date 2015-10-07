require 'airborne'

Airborne.configure do |config|
  config.rack_app = Rack::Builder.parse_file(File.expand_path('../../config.ru', __FILE__)).first
end
