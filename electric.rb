require 'sinatra'
require 'sendgrid-ruby'

get '/' do
	erb :home
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end

get '/gallery' do
	erb :gallery
end

post '/send_and_thank' do
	@name = params[:name]
	@email = params[:email]
	@message = params[:message]
	erb :thanks
end