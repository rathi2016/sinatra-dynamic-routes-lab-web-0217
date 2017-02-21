require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do
       @user_name = params[:name]

      erb :reversename
    end
 get '/square/:number' do
 @number = params[:number].to_i
 erb :square
end

get '/say/:number/:phrase' do
  @num = params[:number].to_i
  @phrase = params[:phrase]
  erb :repeats
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
   erb :concat
end

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i
  erb :operation

end


end
