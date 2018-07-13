require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name]
    
    "#{@user_name.reverse!}"
  end
  
  get '/square/:number' do
    @number = params[:number]
    
    "#{@number.to_i * @number.to_i}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    
    @number.to_i.times do
      "#{@phrase}\n"
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/'
end