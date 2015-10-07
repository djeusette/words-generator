require 'spec_helper'

describe 'words endpoint' do
  it 'should validate words' do
    get '/api/words' # json api that returns { "words" : "generated words" }
    expect_json_types(words: :string)
  end
end
