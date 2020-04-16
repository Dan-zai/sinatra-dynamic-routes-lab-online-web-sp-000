require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    #must be reversed on the attribute rather than the returned string
    @name

  end 
  
end