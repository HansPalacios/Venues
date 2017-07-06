#server.rb

require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require 'sinatra/flash'
# configure :development, :test do 
# 	set :database, {adapter: "sqlite3", database: "db/venues.db"}
# end
require 'rake'
require './models'
enable :sessions

#configure our database
tabase is configured

before do
@current_user = session[:user_id] ? User.find(session[:user_id]): nil
end

before ['/write','/profile'] do
   redirect '/' unless @current_user 
end

get '/' do 
	# @users = User.where.not( status: :deleted)
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
     redirect '/profile'
   else
     redirect '/'
   end
 end

post '/write' do
 @post = Post.new( title: params[:title],
   			 content: params[:content],
             user_id: @current_user.id )
   if @post.save
     flash[:message] = "Posted!"
   else
     flash[:message] = "Not Posted"
   end
       redirect '/write'
 end

get '/post/:id/delete' do
   @post = Post.find( params[:id] )
   if @post.user_id != @current_user.id
     flash[:message] = "Unable to delete, no access rights"
   elsif @post.destroy
     flash[:message] = "Deleted post"
   else
     flash[:message] = "Your post could not be deleted"
   end
   redirect '/profile'
 end

get '/profile/update' do
	@current_user.update( username: params[:username], password: params[:password], fname: params[:fname], lname: params[:lname], email: params[:email] )
	redirect '/profile'
end