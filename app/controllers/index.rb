require 'sinatra'


get '/' do
  # Look in app/views/index.erb
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  @nakama = params[:value]
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url<br>"
  puts "[LOG] Params: #{params.inspect}"
  @message = params[:message]
  @nakama1 = params[:nakama1]
  @text_box = params[:text_box]
  @my_title = params[:post][:my_title]
  @price = params[:post][:price]
  @description = params[:post][:description]
  @nakama2 = params[:nakama2]
  @nakamadropdown = params[:nakamadropdown]
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @message = params[:message]
  erb :post_cool_url
end