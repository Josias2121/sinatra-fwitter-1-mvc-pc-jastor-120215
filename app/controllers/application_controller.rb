require './config/environment'
require './app/models/tweet'

#classes are App factories, and they pump out
#new instances of our App whenever users want it

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    Tweet.new("Josias Is the best mutha","What up brehh")
    @tweets = Tweet.all
    erb :index 
  end

end
