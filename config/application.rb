$: << File.expand_path('../../', __FILE__)

require File.expand_path("../boot", __FILE__)

Bundler.require :default, ENV["RACK_ENV"]

Dir[File.expand_path('../../api/*.rb', __FILE__)].each do |file|
  autoload 'WordsGenerator', file
end

Dir[File.expand_path('../../**/*.rb', __FILE__)].each do |file|
  require file unless File.dirname(file).match(/spec/)
end
