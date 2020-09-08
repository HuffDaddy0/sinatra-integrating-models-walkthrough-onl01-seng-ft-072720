require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
@num_words =  TextAnalyzer::num_words(text_from_user)
@vowels = TextAnalyzer::vowels(text_from_user)
@consonants = TextAnalyzer::consonants(text_from_user)
@most_common = TextAnalyzer::most_common(text_from_user)[0]
@most_common_value = TextAnalyzer::most_common(text_from_user)[1]

erb :results
  end
end
