require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    #must be reversed on the attribute rather than the returned string
    @name
  end 
  
  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2 }"
  end
  
  get '/say/:number/phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{number} + #{phrase}"
  end
  
  
  
end