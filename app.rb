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
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
  if @operation = "add"
    "#{@number1 + @number2}"
  elsif @operation = "subtract"
    "#{@number1 - @number2}"
  elsif @operation = "divide"
      "#{@number1 / @number2}"
  elsif @operation = "multiply"
      "#{@number1 - @number2}"
  
  
end