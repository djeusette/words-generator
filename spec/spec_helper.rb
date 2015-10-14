require 'grape'
require 'json'
require 'rack/test'
require File.expand_path('../../config/environment', __FILE__)

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.raise_errors_for_deprecations!
end
