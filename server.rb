#server.rb

require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require 'sinatra/flash'
require 'rake'
require './models'
enable :sessions

#configure our database
set :database, {adapter: "sqlite3", database: "db/hack.db"}
# models.rb requires a database connection, so lets include that only after a database is configured


get '/' do 

	erb :home
end

get '/profile' do
	erb :profile
end

get '/archive' do
	erb :archive
end 

get '/signup' do
	erb :signup
end

before do
	@post = {
		post1:{name: "House of Yes", image: "/images/houseofyes.jpeg", description: "Funky venue showcasing dance, circus, theater & cabaret performances in a former ice warehouse.", categories: ["July"]},
	}
	# @archive = @post.reduce([]) do |arr,(key,hash)|
	# 	arr | hash[:categories]
	# end
end

post '/profile' do
	@post = Email.create(params[:email])
	flash[:notice] = "We have received your email and will get back to you as soon as possible"
	flash[:alert] = "You need to put on a sweater"
	redirect "/profile"

end

post '/sign-in' do
	@user = User.find_by(username: params[:username])
	if
		@user && @user.password == params[:password]    
		session[:user_id] = @user.id    
		flash[:alert] = "You've been signed in successfully."
		redirect "/profile"
	else    
		flash[:notice] = "There was a problem signing you in."
	end
	end