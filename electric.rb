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

# get '/thanks' do
# 	erb :thanks
# end

post '/send_and_thank' do
	@name = params[:name]
	@email = params[:email]
	@subject = params[:subject]
	@message = params[:message]

	from = SendGrid::Email.new(email: @email) 
	subject = @subject 
	to = SendGrid::Email.new(email: 'test@test.com')

	content = SendGrid::Content.new(type: 'text/plain', value: @message)

	mail = SendGrid::Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

	response = sg.client.mail._('send').post(request_body: mail.to_json)

	puts response.status_code 
	puts response.body

	erb :thanks

end