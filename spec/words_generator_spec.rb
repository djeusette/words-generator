require 'spec_helper'

describe WordsGenerator::Api::Base do
  subject { WordsGenerator::Api::Base.new }

  def app
    subject
  end

  describe 'words endpoint' do
    it 'returns words' do
      get 'api/words/' # json api that returns { "words" : "generated words" }

      parsed_response = JSON.parse(last_response.body)
      expect(last_response.status).to eq(200)
      expect(parsed_response["words"]).to be_a(String)
    end
  end
end
