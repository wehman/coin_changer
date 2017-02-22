require 'sinatra'
require 'sinatra/reloader' if development?  
require_relative 'coin_changer.rb'

get '/' do
  erb :get_coins
end

post '/your_input_change' do

  	amount = params[:amount].to_i
  	change = get_change(amount)
 
#	"Your change from the money changer is #{change}."
	
	erb :get_next_coins, :locals => {:change => change}
end

 