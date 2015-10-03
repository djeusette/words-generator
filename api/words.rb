module WordsGenerator
  module Api
    class Words < Grape::API
      format  :json

      namespace :words do
        get '/' do
          words = [
            Forgery('basic').color,
            Forgery('lorem_ipsum').word,
            Forgery('name').company_name,
            Forgery('name').female_first_name,
            Forgery('name').industry
          ]

          {words: words.sample(1 + rand(words.length)).join(' ')}
        end
      end
    end
  end
end
