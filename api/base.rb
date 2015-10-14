require_relative './words'

module WordsGenerator
  module Api
    class Base < Grape::API
      prefix "api"

      format :json
      default_format :json

      mount Api::Words
    end
  end
end
