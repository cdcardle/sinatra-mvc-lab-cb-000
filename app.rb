require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latinzier = PigLatinizer.new
    @user_phrase = params[:user_phrase]

    erb :output
  end

end
