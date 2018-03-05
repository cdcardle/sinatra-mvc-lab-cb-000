require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    object = PigLatinizer.new
    object.phrase = params[:user_phrase]
    @user_phrase = object

    erb :output
  end

end
