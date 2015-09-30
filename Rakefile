require "rubygems"
require "bundler"
require "rake"

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

task :environment do
  ENV["RACK_ENV"] ||= 'development'
  require File.expand_path("../config/environment", __FILE__)
end

desc "Print out routes"
task routes: :environment do
  WordsGenerator::Api.routes.each do |route|
    info = route.instance_variable_get :@options
    description = "%-40s..." % info[:description][0..39] if info[:description]
    method = "%-7s" % info[:method]
    puts "#{description}  #{method}#{info[:path]}"
  end
end

desc 'Open an irb session with the app preloaded'
task :console do
  exec 'irb -I . -r config/environment'
end
