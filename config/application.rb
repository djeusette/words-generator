require File.expand_path("../boot", __FILE__)

Bundler.require :default, ENV["RACK_ENV"]

Dir[File.expand_path('../../**/*.rb', __FILE__)].each do |file|
  require file
end
