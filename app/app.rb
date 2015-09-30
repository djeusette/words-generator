module WordsGenerator
  class App
    MUTEX = Mutex.new

    def self.instance
      MUTEX.synchronize do
        @instance ||= Rack::Builder.new do
          use Rack::Cors do
            allow do
              origins '*'
              resource '*', headers: :any, methods: :get
            end
          end

          run WordsGenerator::App.new
        end.to_app
      end
    end

    def call(env)
      WordsGenerator::Api.call(env)
    end
  end
end
