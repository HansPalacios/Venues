#server.rb

require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require 'sinatra/flash'
require 'rake'
require './models'
enable :sessions

#configure our database
set :database, {adapter: "sqlite3", database: "db/venues.db"}
# models.rb requires a database connection, so lets include that only after a database is configured

before do
@current_user = session[:user_id] ? User.find(session[:user_id]): nil
end


get '/' do 
	@posts = Post.order( created_at: :desc ).limit(10)
	erb :home
end

get '/profile' do
	@posts = @current_user.posts
	erb :profile
end


get '/signup' do
	erb :signup
end

get '/write' do 
	erb :write
end

get '/posts' do
	@posts = Post.all 
	erb :posts
end
get '/post/:id' do
	@post = Post.find(params[:id])
	erb :post
end

	# @archive = @post.reduce([]) do |arr,(key,hash)|
	# 	arr | hash[:categories]
	# end


post '/contact' do
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
		redirect '/'
	end
	end

post '/profile' do
   if @current_user.password == params[:password]
     @current_user.update(
       fname: params[:fname],
       lname: params[:lname]
     )
     flash[:message] = "Updated"
   else
     flash[:message] = "Incorrect Password"
   end
   redirect '/profile'
 end



post '/write' do
 @post = Post.new( title: params[:title],
   			 body: params[:body],
             user_id: @current_user.id )
   if @post.save
     flash[:message] = "Posted!"
     redirect '/write'
   else
     flash[:message] = "Not Posted"
     redirect '/write'
   end
 end