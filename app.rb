require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    pig.phrase = params[:user_phrase]
    @user_phrase = pig.phrase

    erb :output
  end

end
