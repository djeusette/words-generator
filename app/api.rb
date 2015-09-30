module WordsGenerator
  class Api < Grape::API
    prefix "api"

    format :json
    default_format :json

    mount API::Words
  end
end
