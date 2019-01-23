require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @text = Piglatinizer.piglatinize(params[:user_phrase])
    @text.to_s
    erb :result
  end
  
end