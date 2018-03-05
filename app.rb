require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @pig_latinized_word = PigLatinizer.new(params[:user_input])

    erb :output
  end

end
