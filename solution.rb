require 'sinatra'

get '/' do
	@count = params[:item]
	if @count == nil
		@count = 0
	end
  erb :index
end

get '/contador' do
	@count = params[:c].to_i + 1
	redirect "/?item=#{@count}"
end